FROM nginx:1.27-alpine
# Railway передаёт порт в переменной PORT; nginx подставит его из шаблона при старте
ENV PORT=8080
COPY default.conf.template /etc/nginx/templates/default.conf.template
COPY index.html /usr/share/nginx/html/index.html
