# make changes to our configuration file

file_line {'password-less':
path    => '/etc/ssh/ssh_config',
line    => '    PasswordAuthentication no',
replace => true
}


file_line {'private-key':
path    => '/etc/ssh/ssh_config',
line    => '    IdentityFile ~/.ssh/school',
replace => true
}
