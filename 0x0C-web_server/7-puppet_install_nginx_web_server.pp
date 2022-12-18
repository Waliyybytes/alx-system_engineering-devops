# perform a 301 redirect when querying /redirect_me.

exec {'update host':
command => '/usr/bin/apt update -y'
}

exec {'updgrade host':
 command => '/usr/bin/apt upgrade -y'
}

exec {'Install nginx':
command => '/usr/bin/apt install nginx'
}

exec {'Change var www owner':
command => '/usr/bin/chown -R $USER:$USER /var/www'
}

exec {'Make Homepage to display hello world':
command => '/usr/bin/echo Hello World! > /var/www/html/index.nginx-debian.html'
}

exec {'redirect permanently':
command => '/usr/bin/sed -i "26i\ \tlocation /redirect_me {\n\t\t return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;i\n\t}" /etc/nginx/sites-available/default'
}

exec {'restart nginx':
command => '/usr/sbin/service nginx restart'
}
