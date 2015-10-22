slate-in-action
========

为了方便维护，文档站可能被拆成 gen 和 doc 两部分

doc 用于存放和编辑文档的 markdown 文件

gen 则用于存放和维护文档站的模板，就是生成器相关的内容（即当前 repo 中的 demo）

为了提高开发效率，demo 使用了 middleman-livereload 插件以监视文件的更改并动态刷新变更

通过实验证明 middleman-livereload 无法监视通过软链包括进来的目录和文件

于是采用了 gulp (当前 repo 中的 helper) 的 watch 来监视文件的变更，并将 doc 的内容复制到 demo 中以激活 middleman-livereload

### 项目初始化

```bash
cd demo
bundle install

cd ../helper
npm install
```

### 项目运行

```bash
make dev
```
