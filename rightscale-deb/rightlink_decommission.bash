#!/bin/bash

. /opt/rightscale/etc/init.d/rightscale_functions

logger -t RightScale "RightScale RightLink decommission."

check_invoking_user_permissions
check_for_rightscale
configure_proxy
decommission_right_link_agent
stop_right_link_agent