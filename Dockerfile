FROM mhart/alpine-node

LABEL author="doramart@qq.com"

ENV PORT=8080

WORKDIR /app
COPY . /app

RUN npm install --registry=https://registry.npmmirror.com
RUN npm install mammoth node-schedule --registry=https://registry.npmmirror.com

EXPOSE ${PORT}


CMD BUILD_ENV=docker npm run dev

