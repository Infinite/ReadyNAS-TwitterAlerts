#/bin/bash
#-------------------------------------------------------------------------
#  Copyright 2011, Infinite Descent
#  All rights reserved.
#-------------------------------------------------------------------------

send_email_alert() {
  subject=$1
  mesg=$2
  user=$3
  language=$4
  trapoid=$5
  mesgoid=$6

  echo "send_email_alert" + $subject;
  send_twitter_alert $@;
}

send_twitter_alert() {
  subject=$1
  mesg=$2
  user=$3
  language=$4
  trapoid=$5
  mesgoid=$6

  echo "$subject";

}

