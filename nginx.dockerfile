FROM nginx:latest

RUN rm /usr/share/nginx/html/index.html \
    && mkdir /usr/share/nginx/html/js

COPY index.html /usr/share/nginx/html/index.html
COPY pass_envs.sh /tmp/env.sh
COPY init_script.sh /tmp/init_script.sh

RUN chmod +x /tmp/*.sh
    
CMD ["/bin/sh",  "-c",  "/tmp/init_script.sh" ]
