#!/bin/bash

/tmp/pass_envs.sh > /usr/share/nginx/html/js/env.js

service nginx start

rm /tmp/*.sh
