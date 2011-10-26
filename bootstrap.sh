#!/bin/bash
#-------------------------------------------------------------------------
#  Copyright 2011, Infinite Descent
#  All rights reserved.
#-------------------------------------------------------------------------

#change this to where the TwitterPlugin should actually live
#. /frontview/bin/functions
. ~/InfiniteDescent/projects/twitterAlerts/fake_functions.sh

MYARG="\"This is a test alert that being sent from your ReadyNAS\"";
send_email_alert "foo" "$MYARG" "bar";
