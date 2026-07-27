@echo off
chcp 65001 >nul
echo ==========================================
echo  上传代码到 GitHub
echo ==========================================
echo.

cd /d C:\Users\HUAWEI\.qclaw\workspace\message-bridge

echo [1/5] 初始化 Git...
git init

echo.
echo [2/5] 添加文件...
git add .

echo.
echo [3/5] 提交代码...
git commit -m "Initial commit"

echo.
echo [4/5] 连接远程仓库...
git remote add origin https://github.com/676176311/message-bridge.git

echo.
echo [5/5] 推送到 GitHub...
git branch -M main
git push -u origin main

echo.
echo ==========================================
echo  上传完成！
echo ==========================================
pause
