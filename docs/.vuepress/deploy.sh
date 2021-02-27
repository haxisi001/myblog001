#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
yarn build :build

# 进入生成的文件夹
cd blog/.vuepress/dist

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:haxisi001/myVueBlog.git master:gh-pages
# 链接远程仓库
git remote add origin https://haxisi001.github.io/myblog001/
# 拉取远程仓库的文件
git pull --rebase origin master  
# 同步更新代码
git push -u origin master
cd -


