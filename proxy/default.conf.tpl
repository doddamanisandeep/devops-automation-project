server {
    listen ${LISTEN_PORT};

    location /static/static {
        alias /vol/static;
    }

     location /static/mdeia {
        alias /vol/mdeia;
    }

    location / {
        uwsgi_pass              ${APP_HOST}:${APP_PORT};
        include                 /etc/nginx/uwsgi_params;
        client_max_body_size    10M;
    }
}
