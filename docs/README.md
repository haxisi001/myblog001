---
date: 2018-11-7
tag: 
  - frontmatter
  - vuepress
  - 源码分析
author: xiaolizhu
location: beijing  
---

# VuePress的搭建过程

首先创建一个github账号，在账户里新建一个项目，使用git将项目clone到本地，使用ssh秘钥的方式clone。
在clone下来的文件里安装vuepress.
项目搭建：
1、vuepress是有vue、vueRouter和webpack驱动的单页面应用，所以要提前安装node和webpack。node版本>=8.
2、安装vuepress:.


```markdown
---
yarn global add vuepress 或者 npm install -g vuepress 
---
```

     3、正在当前文件里打开命行窗口(运行cmd) 执行
```markdown
---
yarn init -y 或者 npm init -y
---
```
      4、此时在当前文件夹下会生成一个package.json文件，内容如下：
::: tip
{
  "name": "vuepressdemo",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC"
}
:::
      修改scripts:
	  
::: tip
"scripts": {
    "docs:dev": "vuepress dev docs",
    "docs:build": "vuepress build docs"
  }
:::
	   5、在当前文件夹新建docs文件夹，进入docs文件执行
::: tip
echo '# Hello VuePress!' > README.md
:::

这个文件相当首页文件。

        6、在 docs 文件下创建 .vuepress 文件夹，所有vuepress相关的文件都将放在这里。
::: tip
mkdir .vuepress
:::
        7、在.vuepress文件夹里创建config.js。
		config.js文件是vuepress必要的配置文件，他导出一个javascript对象。
::: tip
module.exports = {
  title: 'Hello VuePress',
  description: 'Just playing around'
}
:::	
        8、启动你的vuepress试一下。
		在命令行里执行：
::: tip
npm run docs:dev
:::	

## Predefined Variables Powered By Default Theme

### navbar

- Type: `boolean`
- Default: `undefined`

See: [Default Theme Config > Disable the Navbar](../theme/default-theme-config.md#disable-the-navbar).

### sidebar

- Type: `boolean|'auto'`
- Default: `undefined`

See: [Default Theme Config > Sidebar](../theme/default-theme-config.md#sidebar).
