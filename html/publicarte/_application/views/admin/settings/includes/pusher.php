<?php echo render_input('settings[pusher_app_key]','pusher_app_key',get_option('pusher_app_key')); ?>
<?php echo render_input('settings[pusher_app_secret]','pusher_app_secret',get_option('pusher_app_secret')); ?>
<?php echo render_input('settings[pusher_app_id]','pusher_app_id',get_option('pusher_app_id')); ?>
<i class="fa fa-question-circle" data-toggle="tooltip" data-title="<?php echo _l('pusher_cluster_notice'); ?>"></i>
<?php echo render_input('settings[pusher_cluster]','Cluster <small><a href="https://pusher.com/docs/clusters" target="_blank">https://pusher.com/docs/clusters</a></small>',get_option('pusher_cluster')); ?>

<hr />
<?php echo render_yes_no_option('pusher_realtime_notifications','pusher_enable_realtime_notifications'); ?>
