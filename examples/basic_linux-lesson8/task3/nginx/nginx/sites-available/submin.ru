server {
    listen 443 ssl http2;
    server_name www.submin.ru;
    server_name_in_redirect off;

    access_log /var/log/nginx/submin.ru-access.log;
    error_log /var/log/nginx/submin.ru-error.log;

    root /var/www/static/;

    index index.html;

    location / {
        try_files $uri $uri/ /index.html;
    }
}
