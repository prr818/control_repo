class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorization_key { 'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDQxMQGUQVN+cgZ4e/xQ/Li7Xjy0TYiMu5MQPctVCcfPZ8YO5RmdzXpD/X2k4+NQ4bI/z5+ug85zQbMIFl2ishBm+hM1MsCv17tY5wSeufp8dP1THLJUvS0JU/UP2QP2oj2y6Mgx2ohPzNAesYsGGjUd3U1IfbPuVcYrHRb+LJLCsahlL1WXvZgT2mcByr8wVC6Fl3ZZt4n8s5KUP3rKlmBPez5VKed9LanH+weid7Lk0q/0E+1Icx8uIw7LH4UAdF3t2V/lgB0irEeC7f3LO+NW8k0JpCm+93B1Atrrn0In7/JUDHZwLzKY8kPNq7cOeMNe2jirW+E4UP86LPJOyiN',
  }
}
