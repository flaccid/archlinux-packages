#!/bin/bash

. /opt/rightscale/etc/init.d/rightscale_functions

logger -t RightScale "RightLink service stop."

check_invoking_user_permissions
check_for_rightscale
configure_proxy
stop_right_link_agent