#!/bin/bash
#-------------------------------------------------------------------------
#  Copyright 2011, Infinite Descent
#  All rights reserved.
#-------------------------------------------------------------------------

FS='!!'
export PATH=$PATH

#this is a stub example of the ReadyNAS send_email_alert method
send_email_alert() {
  subject=$1
  mesg=$2
  user=$3
  language=$4
  trapoid=$5
  mesgoid=$6

  perl send_twitter_alert.pl "$2";
}
