# 使用完整的 Node.js 镜像，不再用 alpine 版本，因为它内置了 Python 和编译工具
FROM node:18

# 设置工作目录
WORKDIR /app

# 复制配置文件
COPY package*.json ./

# 安装依赖
# 在这个镜像里，npm install 通常能直接成功，因为它自带了编译环境
RUN npm install

# 复制其余源码
COPY . .

# 暴露端口
EXPOSE 8080

# 启动程序
CMD ["npm", "start"]
