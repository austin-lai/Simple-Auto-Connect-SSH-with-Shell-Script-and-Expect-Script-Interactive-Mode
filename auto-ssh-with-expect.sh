#!/usr/bin/expect -f
# auto-ssh-with-expect.sh as below
# Set variables with the arguments pass from ssh-info.sh
set SERVER [lindex $argv 0]
set SSH_PORT [lindex $argv 1]
set USERNAME [lindex $argv 2]
set PASSWORD [lindex $argv 3]

 
# Announce which device we are working on and at what time
send_user "\n"
send_user ">>>>>  Working on $SERVER @ [exec date] <<<<<\n"
send_user "\n"


# Don't check keys
spawn ssh -o StrictHostKeyChecking=no -p $SSH_PORT $USERNAME\@$SERVER

 
expect "yes/no" { 
	send "yes\r"
	expect "*?assword" { send "$PASSWORD\r" }
	} "*?assword" { send "$PASSWORD\r" }

interact


 

