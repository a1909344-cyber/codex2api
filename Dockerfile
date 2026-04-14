# 1. 使用 Node 运行环境
FROM node:18-alpine

# 2. 安装编译 better-sqlite3 所需的依赖 (Python, Make, G++)
# alpine 镜像非常小，所以必须手动安装这些构建工具
RUN apk add --no-cache python3 make g++

# 3. 设置工作目录
WORKDIR /app

# 4. 复制配置文件
COPY package*.json ./

# 5. 安装项目依赖
RUN npm install

# 6. 复制所有源码
COPY . .

# 7. 暴露端口 (codex2api 常用端口)
EXPOSE 8080

# 8. 启动程序
CMD ["npm", "start"]
