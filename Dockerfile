FROM node:gallium-alpine
WORKDIR /node-proxy

COPY ./ncc /node-proxy

RUN pwd

RUN ls -la

RUN rm -rf /etc/localtime && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

EXPOSE 5344
 
ENTRYPOINT ["node", "index.js"]
