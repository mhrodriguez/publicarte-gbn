<?php

namespace AppBundle\Controller;

use AppBundle\Entity\CorteCaja;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\ResponseHeaderBag;

/**
 * Cortecaja controller.
 *
 * @Route("cortecaja")
 */
class CorteCajaController extends Controller
{
    /**
     * Lists all corteCaja entities.
     *
     * @Route("/", name="cortecaja_index")
     * @Method("GET")
     */
    public function indexAction(Request $request)
    {
        date_default_timezone_set('America/Monterrey');

        $em = $this->getDoctrine()->getManager();

        $authuser = $this->get('security.context')->getToken()->getUser();

        $fechaIniciostr = $request->query->get('fechaInicio');
        $fechaFinstr = $request->query->get('fechaFin');
        if ($fechaIniciostr == null || $fechaFinstr == null)
        {
            $fechaInicio = new \DateTime();
            $fechaFin = new \DateTime();

            $fechaIniciostr = $fechaInicio->format('d-m-Y');
            $fechaFinstr = $fechaFin->format('d-m-Y');
        }
        else
        {
            $fechaInicio = \DateTime::createFromFormat("d-m-Y", $fechaIniciostr);
            $fechaFin = \DateTime::createFromFormat("d-m-Y", $fechaFinstr);
        }
        $fechaInicio->setTime(0, 0, 0);
        $fechaFin->setTime(23, 59, 59);

        $cortecajas = $em->getRepository('AppBundle:CorteCaja')->obtenerCortecajasDeEmpresaPorFecha($authuser->getEmpresa(), $fechaInicio, $fechaFin);

        $usuarios = $em->getRepository('AppBundle:Usuario')->findBy(array('empresa'=>$authuser->getEmpresa()));

        $sucursales = $em->getRepository('AppBundle:Sucursal')->findBy(array('empresa'=>$authuser->getEmpresa()));

        return $this->render('cortecaja/index.html.twig', array(
            'cortecajas' => $cortecajas,
            'sucursales' => $sucursales,
            'usuarios' => $usuarios,
            'fechaIniciostr' => $fechaIniciostr,
            'fechaFinstr' => $fechaFinstr
        ));
    }

    /**
     * Creates a new corteCaja entity.
     *
     * @Route("/new", name="cortecaja_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $corteCaja = new Cortecaja();
        $form = $this->createForm('AppBundle\Form\CorteCajaType', $corteCaja);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($corteCaja);
            $em->flush();

            return $this->redirectToRoute('cortecaja_show', array('id' => $corteCaja->getId()));
        }

        return $this->render('cortecaja/new.html.twig', array(
            'corteCaja' => $corteCaja,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a corteCaja entity.
     *
     * @Route("/show.{_format}/{id}", name="cortecaja_show", defaults= {"_format"="html"}, requirements = {"_format"="html|xls"})
     * @Method("GET")
     */
    public function showAction(CorteCaja $cortecaja, $_format)
    {
        $em = $this->getDoctrine()->getManager();

        // 1. Ventas de este corte de caja
        $ventas = $em->getRepository('AppBundle:Venta')->findBy(array('cortecaja' => $cortecaja));

        $rcj = $em->getRepository('AppBundle:CorteCaja');
        $rcj->setDoctrineManager($em);
        $ventagrupo = $em->getRepository('AppBundle:CorteCaja')->obtenerProductosDeVentasDeCortecaja($cortecaja);

        if ($_format == "html") {
            $deleteForm = $this->createDeleteForm($cortecaja);

            return $this->render('cortecaja/show.html.twig', array(
                'cortecaja' => $cortecaja,
                'ventas' => $ventas,
                'ventagrupo' => $ventagrupo,
                'delete_form' => $deleteForm->createView(),
            ));
        }
        else if ($_format == "xls")
        {
            return $this->showExcel($cortecaja, $ventas, $ventagrupo);
        }
    }

    /**
     * Finds and displays a corteCaja entity.
     *
     * @Route("/{id}", name="cortecaja_showxls")
     * @Method("GET")
     */
    public function showxslAction(CorteCaja $cortecaja)
    {
        $em = $this->getDoctrine()->getManager();

        $deleteForm = $this->createDeleteForm($cortecaja);

        // 1. Ventas de este corte de caja
        $ventas = $em->getRepository('AppBundle:Venta')->findBy(array('cortecaja'=>$cortecaja));

        return $this->render('cortecaja/show.html.twig', array(
            'cortecaja' => $cortecaja,
            'ventas' => $ventas,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing corteCaja entity.
     *
     * @Route("/{id}/edit", name="cortecaja_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, CorteCaja $corteCaja)
    {
        $deleteForm = $this->createDeleteForm($corteCaja);
        $editForm = $this->createForm('AppBundle\Form\CorteCajaType', $corteCaja);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('cortecaja_edit', array('id' => $corteCaja->getId()));
        }

        return $this->render('cortecaja/edit.html.twig', array(
            'corteCaja' => $corteCaja,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a corteCaja entity.
     *
     * @Route("/{id}", name="cortecaja_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, CorteCaja $corteCaja)
    {
        $form = $this->createDeleteForm($corteCaja);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($corteCaja);
            $em->flush();
        }

        return $this->redirectToRoute('cortecaja_index');
    }

    /**
     * Creates a form to delete a corteCaja entity.
     *
     * @param CorteCaja $corteCaja The corteCaja entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(CorteCaja $corteCaja)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('cortecaja_delete', array('id' => $corteCaja->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }

    // Excel
    private function showExcel(CorteCaja $cortecaja, $ventas, $ventagrupo)
    {
        $formato = '_("$"* #,##0.00_);_("$"* \(#,##0.00\);_("$"* "-"??_);_(@_)';

        $phpExcelObject = $this->get('phpexcel')->createPHPExcelObject();
        $writer = $this->get('phpexcel')->createWriter($phpExcelObject, 'Excel2007');

        $htmlHelper = $this->get('phpexcel')->createHelperHTML();

        $nombre = $cortecaja->getUsuario()->getNombre();
        if ($cortecaja->getUsuario()->getApellidos() != null)
        {
            $nombre = $nombre . ' ' . $cortecaja->getUsuario()->getApellidos();
        }

        $phpExcelObject->getActiveSheet()->getStyle('A1')->getFont()->setSize(16);

        $phpExcelObject->setActiveSheetIndex(0)
            // Titulos
            ->setCellValue('A1', $htmlHelper->toRichTextObject('<b>RESUMEN</b>'))
            ->setCellValue('A3', $htmlHelper->toRichTextObject('<b>Fecha</b>'))
            ->setCellValue('A4', $htmlHelper->toRichTextObject('<b>Sucursal</b>'))
            ->setCellValue('A5', $htmlHelper->toRichTextObject('<b>Usuario</b>'))
            ->setCellValue('A6', $htmlHelper->toRichTextObject('<b>Periodo</b>'))
            ->setCellValue('C3', $htmlHelper->toRichTextObject('<b>Ventas en Efectivo</b>'))
            ->setCellValue('C4', $htmlHelper->toRichTextObject('<b>Ventas con Tarjeta</b>'))
            ->setCellValue('C5', $htmlHelper->toRichTextObject('<b>Propinas en Efectivo</b>'))
            ->setCellValue('C6', $htmlHelper->toRichTextObject('<b>Propinas con Tarjeta de Cr&eacute;dito</b>'))
            ->setCellValue('C7', $htmlHelper->toRichTextObject('<b>Total de Ventas</b>'))
            ->setCellValue('C8', $htmlHelper->toRichTextObject('<b>Ventas en Efectivo Reportadas</b>'))
            ->setCellValue('C9', $htmlHelper->toRichTextObject('<b>Ventas con Tarjeta Reportadas</b>'))
            ->setCellValue('C10', $htmlHelper->toRichTextObject('<b>Remanente</b>'))
            // Valores
            ->setCellValue('B3', $cortecaja->getFecha()->format('d-m-Y H:i:s'))
            ->setCellValue('B4', $cortecaja->getSucursal()->getNombre())
            ->setCellValue('B5', $nombre)
            ->setCellValue('B6', $cortecaja->getFechainicio()->format('d-m-Y H:i') . ' a ' . $cortecaja->getFechafin()->format('d-m-Y H:i'))
            ->setCellValue('D3', $cortecaja->getTotalefectivo())
            ->setCellValue('D4', $cortecaja->getTotaltarjetacredito())
            ->setCellValue('D5', $cortecaja->getPropinasefectivo())
            ->setCellValue('D6', $cortecaja->getPropinastarjetacredito())
            ->setCellValue('D7', $cortecaja->getTotalefectivo() + $cortecaja->getTotaltarjetacredito())
            ->setCellValue('D8', $cortecaja->getTotalefectivoreportado())
            ->setCellValue('D9', $cortecaja->getTotaltarjetacreditoreportado())
            ->setCellValue('D10', $cortecaja->getRemanente())

            ->setCellValue('A13', $htmlHelper->toRichTextObject('<b>VENTAS</b>'));

        $phpExcelObject->getActiveSheet()->getStyle('A13')->getFont()->setSize(16);

        $phpExcelObject->getActiveSheet()->getStyle('D3:D10')->getNumberFormat()->setFormatCode(
            $formato
        );

        // VENTAS ----------------------------------------------------------------------------------------------
        $phpExcelObject->setActiveSheetIndex(0)
            ->setCellValue('A15', $htmlHelper->toRichTextObject('<b>Fecha</b>'))
            ->setCellValue('B15', $htmlHelper->toRichTextObject('<b>Producto</b>'))
            ->setCellValue('C15', $htmlHelper->toRichTextObject('<b>Forma de pago</b>'))
            ->setCellValue('D15', $htmlHelper->toRichTextObject('<b>Cantidad</b>'))
            ->setCellValue('E15', $htmlHelper->toRichTextObject('<b>Precio Unitario</b>'))
            ->setCellValue('F15', $htmlHelper->toRichTextObject('<b>Subtotal</b>'))
            ->setCellValue('G15', $htmlHelper->toRichTextObject('<b>IVA</b>'))
            ->setCellValue('H15', $htmlHelper->toRichTextObject('<b>Total</b>'));

        $fila=16;
        for ($index=0; $index<count($ventas); $index++)
        {
            $venta = $ventas[$index];

            $phpExcelObject->setActiveSheetIndex(0)
                ->setCellValue('A'.$fila, $htmlHelper->toRichTextObject('<b>' . $venta->getFecha()->format('d-m-Y H:i:s') . '</b>'))
                ->setCellValue('B'.$fila, $htmlHelper->toRichTextObject('<b>Venta ' . $venta->getId() . '</b>'))
                ->setCellValue('C'.$fila, $htmlHelper->toRichTextObject('<b>' . $venta->getMedioPago()->getNombre() . '</b>'));
            $fila++;

            // Detalle
            for ($index2=0; $index2<count($venta->getItems()); $index2++) {
                $ventaItem = $venta->getItems()[$index2];

                $subtotal = $ventaItem->getPrecio() * $ventaItem->getCantidad();
                $iva = $ventaItem->getPrecio() * $ventaItem->getCantidad() * 0.16;

                $phpExcelObject->setActiveSheetIndex(0)
                    ->setCellValue('B'.$fila, $ventaItem->getProducto()->getNombre())
                    ->setCellValue('D'.$fila, $ventaItem->getCantidad())
                    ->setCellValue('E'.$fila, $ventaItem->getPrecio())
                    ->setCellValue('F'.$fila, $subtotal)
                    ->setCellValue('G'.$fila, $iva)
                    ->setCellValue('H'.$fila, $subtotal + $iva);

                $phpExcelObject->getActiveSheet()->getStyle('E'.$fila)->getNumberFormat()->setFormatCode(
                    $formato
                );
                $phpExcelObject->getActiveSheet()->getStyle('F'.$fila)->getNumberFormat()->setFormatCode(
                    $formato
                );
                $phpExcelObject->getActiveSheet()->getStyle('G'.$fila)->getNumberFormat()->setFormatCode(
                    $formato
                );
                $phpExcelObject->getActiveSheet()->getStyle('H'.$fila)->getNumberFormat()->setFormatCode(
                    $formato
                );

                $fila++;
            }

            for ($index2=0; $index2<count($venta->getItempaquetes()); $index2++) {
                $ventaItempaquete = $venta->getItempaquetes()[$index2];

                $subtotal = $ventaItempaquete->getPrecio() * $ventaItempaquete->getCantidad();
                $iva = $ventaItempaquete->getPrecio() * $ventaItempaquete->getCantidad() * 0.16;

                $phpExcelObject->setActiveSheetIndex(0)
                    ->setCellValue('B'.$fila, $ventaItempaquete->getDescripcion())
                    ->setCellValue('D'.$fila, $ventaItempaquete->getCantidad())
                    ->setCellValue('E'.$fila, $ventaItempaquete->getPrecio())
                    ->setCellValue('F'.$fila, $subtotal)
                    ->setCellValue('G'.$fila, $iva)
                    ->setCellValue('H'.$fila, $subtotal + $iva);

                $phpExcelObject->getActiveSheet()->getStyle('E'.$fila)->getNumberFormat()->setFormatCode(
                    $formato
                );
                $phpExcelObject->getActiveSheet()->getStyle('F'.$fila)->getNumberFormat()->setFormatCode(
                    $formato
                );
                $phpExcelObject->getActiveSheet()->getStyle('G'.$fila)->getNumberFormat()->setFormatCode(
                    $formato
                );
                $phpExcelObject->getActiveSheet()->getStyle('H'.$fila)->getNumberFormat()->setFormatCode(
                    $formato
                );

                $fila++;
            }

            // Footer
            $phpExcelObject->setActiveSheetIndex(0)
                ->setCellValue('F'.$fila, $venta->getSubtotal())
                ->setCellValue('G'.$fila, $venta->getIva())
                ->setCellValue('H'.$fila, $venta->getTotal());

            $phpExcelObject->getActiveSheet()->getStyle('F'.$fila)->getNumberFormat()->setFormatCode(
                $formato
            );
            $phpExcelObject->getActiveSheet()->getStyle('G'.$fila)->getNumberFormat()->setFormatCode(
                $formato
            );
            $phpExcelObject->getActiveSheet()->getStyle('H'.$fila)->getNumberFormat()->setFormatCode(
                $formato
            );

            $fila++;
        }

        // VENTAS POR PRODUCTO ----------------------------------------------------------------------------------
        $fila ++;
        $phpExcelObject->getActiveSheet()->getStyle('A' . $fila)->getFont()->setSize(16);
        $phpExcelObject->setActiveSheetIndex(0)->setCellValue('A' . $fila, $htmlHelper->toRichTextObject('<b>PRODUCTO VENDIDOS</b>'));

        $fila ++;
        $phpExcelObject->setActiveSheetIndex(0)
            ->setCellValue('B'.$fila, $htmlHelper->toRichTextObject('<b>Producto</b>'))
            ->setCellValue('C'.$fila, $htmlHelper->toRichTextObject('<b>Cantidad</b>'))
            ->setCellValue('D'.$fila, $htmlHelper->toRichTextObject('<b>Precio Unitario</b>'))
            ->setCellValue('E'.$fila, $htmlHelper->toRichTextObject('<b>Subtotal</b>'))
            ->setCellValue('F'.$fila, $htmlHelper->toRichTextObject('<b>IVA</b>'))
            ->setCellValue('G'.$fila, $htmlHelper->toRichTextObject('<b>Total</b>'));

        $fila++;
        // Detalle
        for ($index2=0; $index2<count($ventagrupo->getItems()); $index2++) {
                $ventaItem = $ventagrupo->getItems()[$index2];

                $phpExcelObject->setActiveSheetIndex(0)
                    ->setCellValue('B'.$fila, $ventaItem->getDescripcion())
                    ->setCellValue('C'.$fila, $ventaItem->getCantidad())
                    ->setCellValue('D'.$fila, $ventaItem->getPrecio())
                    ->setCellValue('E'.$fila, $ventaItem->getTotal())
                    ->setCellValue('F'.$fila, $ventaItem->getTotal() * 0.16)
                    ->setCellValue('G'.$fila, $ventaItem->getTotal() + ($ventaItem->getTotal() * 0.16));

                $phpExcelObject->getActiveSheet()->getStyle('D'.$fila)->getNumberFormat()->setFormatCode(
                  $formato
                );
                $phpExcelObject->getActiveSheet()->getStyle('E'.$fila)->getNumberFormat()->setFormatCode(
                    $formato
                );
                $phpExcelObject->getActiveSheet()->getStyle('F'.$fila)->getNumberFormat()->setFormatCode(
                    $formato
                );
                $phpExcelObject->getActiveSheet()->getStyle('G'.$fila)->getNumberFormat()->setFormatCode(
                    $formato
                );

                $fila++;
        }

        // VENTAS POR PAQUETE ----------------------------------------------------------------------------------
        $fila ++;
        $phpExcelObject->getActiveSheet()->getStyle('A' . $fila)->getFont()->setSize(16);
        $phpExcelObject->setActiveSheetIndex(0)->setCellValue('A' . $fila, $htmlHelper->toRichTextObject('<b>PAQUETES VENDIDOS</b>'));

        $fila ++;
        $phpExcelObject->setActiveSheetIndex(0)
            ->setCellValue('B'.$fila, $htmlHelper->toRichTextObject('<b>Producto</b>'))
            ->setCellValue('C'.$fila, $htmlHelper->toRichTextObject('<b>Cantidad</b>'))
            ->setCellValue('D'.$fila, $htmlHelper->toRichTextObject('<b>Subtotal</b>'))
            ->setCellValue('E'.$fila, $htmlHelper->toRichTextObject('<b>IVA</b>'))
            ->setCellValue('F'.$fila, $htmlHelper->toRichTextObject('<b>Total</b>'));

        $fila ++;
        for ($index2=0; $index2<count($ventagrupo->getItempaquetes()); $index2++) {
                $ventaItempaquete = $ventagrupo->getItempaquetes()[$index2];

                $phpExcelObject->setActiveSheetIndex(0)
                    ->setCellValue('B'.$fila, $ventaItempaquete->getDescripcion())
                    ->setCellValue('C'.$fila, $ventaItempaquete->getCantidad())
                    ->setCellValue('D'.$fila, $ventaItempaquete->getTotal())
                    ->setCellValue('E'.$fila, $ventaItempaquete->getTotal() * 0.16)
                    ->setCellValue('F'.$fila, $ventaItempaquete->getTotal() + ($ventaItempaquete->getTotal() * 0.16));

                $phpExcelObject->getActiveSheet()->getStyle('D'.$fila)->getNumberFormat()->setFormatCode(
                    $formato
                );
                $phpExcelObject->getActiveSheet()->getStyle('E'.$fila)->getNumberFormat()->setFormatCode(
                    $formato
                );
                $phpExcelObject->getActiveSheet()->getStyle('F'.$fila)->getNumberFormat()->setFormatCode(
                    $formato
                );

                $fila++;
        }

        $phpExcelObject->getActiveSheet()->getColumnDimension("A")->setWidth(20);
        $phpExcelObject->getActiveSheet()->getColumnDimension("B")->setWidth(30);
        $phpExcelObject->getActiveSheet()->getColumnDimension("C")->setWidth(25);
        $phpExcelObject->getActiveSheet()->getColumnDimension("D")->setWidth(13);
        $phpExcelObject->getActiveSheet()->getColumnDimension("E")->setWidth(15);
        $phpExcelObject->getActiveSheet()->getColumnDimension("F")->setWidth(15);
        $phpExcelObject->getActiveSheet()->getColumnDimension("G")->setWidth(15);
        $phpExcelObject->getActiveSheet()->getColumnDimension("H")->setWidth(15);

        $response = $this->get('phpexcel')->createStreamedResponse($writer);

        $nombrereporte = 'cortecaja.xlsx';

        $dispositionHeader = $response->headers->makeDisposition(
            ResponseHeaderBag::DISPOSITION_ATTACHMENT,
            $nombrereporte
        );
        $response->headers->set('Content-Type', 'text/vnd.ms-excel; charset=utf-8');
        $response->headers->set('Pragma', 'public');
        $response->headers->set('Cache-Control', 'maxage=1');
        $response->headers->set('Content-Disposition', $dispositionHeader);

        return $response;
    }
}
