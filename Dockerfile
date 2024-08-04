FROM mhart/alpine-node

LABEL author="doramart@qq.com"

ENV PORT=8080

WORKDIR /app
COPY . /app

RUN npm install --registry=http://registry.npm.taobao.org
RUN npm install mammoth node-schedule --registry=http://registry.npm.taobao.org

EXPOSE ${PORT}


CMD BUILD_ENV=docker npm run dev

