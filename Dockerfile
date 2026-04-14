FROM node:18

WORKDIR /app

# 复制 package.json
COPY package*.json ./

# 安装依赖
RUN npm install

# 复制所有文件
COPY . .

# 确保 lib 目录存在（以防万一）
RUN mkdir -p lib

# 暴露项目端口 (如果 README 说的是其他端口，请修改这里)
EXPOSE 8080

CMD ["node", "server.mjs"]
