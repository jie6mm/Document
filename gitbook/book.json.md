<details>
<summary>文章概要:</summary>
<pre hidden>
information:
    author: jie6mm
    title: book.json
    desc:
    type: gitbook
    tags:
        - gitbook
    series: gitbook
    date: 2021-06-09 10:15:00
</pre>
</details>

# book.json

```json
{
  "title" : "This Gitbook",
  "author" : "jie6mm",
  "description" : "记录一些个人及学习相关笔录",
  "language" : "zh-hans",
  "plugins":[
    // 以弹窗形式查看图片，查看原图
    "lightbox",
    // 侧边栏(侧边目录)宽度可调节
    "splitter",
    // 导航目录折叠
    "chapter-fold",
    // 页面内生成悬浮导航目录
    "anchor-navigation-ex"
  ],
  "pluginsConfig": {
    "anchor-navigation-ex": {
      "showLevel": false,
      "showGoTop": true
    }
  }
}
```