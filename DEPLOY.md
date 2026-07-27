# 🚀 部署指南

## 方案 C 已完成改造

现在服务器会自动托管前端页面，你只需要一个网址就能访问！

## 部署步骤

### 1. 注册账号（3分钟）

- **GitHub**: https://github.com → Sign up → 验证邮箱
- **Render**: https://render.com → Sign up with GitHub

### 2. 创建 GitHub 仓库（2分钟）

1. 登录 GitHub
2. 点击右上角 **+** → **New repository**
3. 填写：
   - Repository name: `message-bridge`
   - 勾选 **Add a README file**（可选）
   - 点击 **Create repository**

### 3. 上传代码（3分钟）

在 PowerShell 中执行（替换 YOUR_USERNAME 为你的 GitHub 用户名）：

```powershell
# 进入项目目录
cd C:\Users\HUAWEI\.qclaw\workspace\message-bridge

# 初始化 Git
git init

# 添加所有文件
git add .

# 提交
git commit -m "Initial commit"

# 连接远程仓库（替换 YOUR_USERNAME）
git remote add origin https://github.com/YOUR_USERNAME/message-bridge.git

# 推送代码
git branch -M main
git push -u origin main
```

### 4. 部署到 Render（3分钟）

1. 登录 https://dashboard.render.com
2. 点击 **New +** → **Web Service**
3. 选择你的 `message-bridge` 仓库
4. 配置：
   - **Name**: `message-bridge`
   - **Runtime**: Node
   - **Build Command**: `npm install`
   - **Start Command**: `npm start`
   - **Plan**: Free
5. 点击 **Create Web Service**
6. 等待 2-3 分钟部署完成

### 5. 获取网址

部署完成后，Render 会给你一个网址：
```
https://message-bridge.onrender.com
```

### 6. 使用

- **电脑**: 浏览器打开 `https://message-bridge.onrender.com`
- **手机**: 浏览器打开同一个网址
- 两边互相输入对方的设备ID
- 开始聊天！

## 特点

✅ **自动检测服务器地址** - 部署后无需手动填写  
✅ **一个网址搞定** - 前端后端都在同一个服务  
✅ **手机电脑都能用** - 任何浏览器即可  

## 注意事项

- Render Free 计划有休眠机制：15分钟无访问会休眠，下次访问需要 30 秒唤醒
- 如果需要保持活跃，可以设置定时访问（如 UptimeRobot）
