#!/bin/bash

. /opt/rightscale/etc/init.d/rightscale_functions

logger -t RightScale "RightLink service reload."

check_invoking_user_permissions
check_for_rightscale
configure_proxy
stop_right_link_agent
check_invoking_user_permissions
init_cloud_state 0
check_invoking_user_permissions
init_os_state
check_for_rightscale
configure_proxy
check_boot_state
install_right_link_scripts
enroll_right_link_instance
deploy_right_link_agent
enable_right_link_core_dumps
start_right_link_agent
update_boot_state