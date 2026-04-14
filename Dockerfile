# 使用最稳定的 Node.js 版本
FROM node:18-alpine

# 设置工作目录
WORKDIR /app

# 先只复制配置文件，这样安装依赖更快
COPY package*.json ./

# 安装依赖 (不使用全局更新，避开报错)
RUN npm install

# 复制剩下所有的项目代码
COPY . .

# 暴露端口 (大部分项目默认 8080 或 3000，这里我们先设为 8080)
EXPOSE 8080

# 启动命令
CMD ["npm", "start"]
