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
    // 去除-导航栏查询功能（不支持中文）
    "-search",
    "-lunr",
    // 去除-右上角分享功能
    "-sharing",
    // 支持中文搜索, 在使用此插件之前，需要将默认的search和lunr 插件去掉
    "search-pro",
    // 分享当前页面，比默认的 sharing 插件多了一些分享方式
    "sharing-plus",
    // 以弹窗形式查看图片，查看原图
    "lightbox",
    // 侧边栏(侧边目录)宽度可调节
    "splitter",
    // 导航目录折叠
    "chapter-fold",
    // 页面内生成悬浮导航目录
    "anchor-navigation-ex",
    // 为代码块添加行号和复制按钮，复制按钮可关闭
    "code",
    // 支持emoji表情图标
    "advanced-emoji",
    // 在右上角添加GitHub
    "github",
    // 嵌入一块功能，可在代码段中实时交互，即（输入代码 > 执行结果
    "klipse",
    // 阅读量记数
    "pageview-count",
    // 点击显示，默认隐藏
    "click-reveal"
  ],
  "pluginsConfig": {
    "anchor-navigation-ex": {
      "showLevel": false,
      "showGoTop": true
    },
    "code": {
      "copyButtons": true
    },
    "github": {
      "url": "https://github.com/jie6mm"
    },
    "sharing": {
      "douban": false,
      "facebook": false,
      "google": true,
      "hatenaBookmark": false,
      "instapaper": false,
      "line": true,
      "linkedin": true,
      "messenger": false,
      "pocket": false,
      "qq": false,
      "qzone": true,
      "stumbleupon": false,
      "twitter": false,
      "viber": false,
      "vk": false,
      "weibo": true,
      "whatsapp": false,
      "all": [
        "douban", "facebook", "google", "hatenaBookmark",
        "instapaper", "linkedin","twitter", "weibo",
        "messenger","qq", "qzone","viber","vk","weibo",
        "pocket", "stumbleupon","whatsapp"
      ]
    }
  }
}
```