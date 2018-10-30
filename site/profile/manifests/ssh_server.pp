class profile::ssh_server {
  package {'open-ssh-server' :
    ensure => present,
  }
  service {'sshd' :
    ensure => running,
    state => true,
  }
  ssh_authorize_key{ '/root/.ssh/authorized_keys':
    ensure => present,
    owner => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDEO1u607fRlvxfVvEd2iE3OyW1lepfsPh7O56TZj3ApJkLFdpvS6YSSEcIUj8P/nrDAwOmWu4JhXdKg+V8oXtAc3WuaadTv07XtXVYX9hSuKUmJOYbVZFTwYuM08bPRD9kCJHg9Wdj+974aJLtmHy8CH41WWGp9vdbbLQx+RE6/f1GNN9BTscjag7/FmqnGgy0sJu3WJZvaKDle6nSuRIE7VByflLkZtxyR7D7v0voMskDtfEi6+tiw7tc1EuH7WOgpfDvThTkQZ7riYa0krA4Zd8Nfs+xbryGSuRQ9JUIRzvvrLQAfXapHI3OtzBlODZQOgqg6DS4cd3fursYAqGL root@master.puppet.vm'
  }
}
