FROM nginx:latest

RUN rm /usr/share/nginx/html/index.html \
    && mkdir /usr/share/nginx/html/js

COPY index.html /usr/share/nginx/html/index.html
COPY env.sh /tmp/env.sh 

RUN chmod +x /tmp/env.sh
    
CMD ["/bin/sh",  "-c",  "/tmp/env.sh > /usr/share/nginx/html/js/env.js && exec nginx -g 'daemon off;'" ]
