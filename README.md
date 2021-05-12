<details>
<summary>文章概要:</summary>
<pre hidden>
information:
    author: jie6mm
    title: 个人笔记文档
    desc: 记录一些个人及学习相关笔录
    date: 2021-05-12 15:30:00
configure:
    skip: true
</pre>
</details>

## 说明
个人笔记文档，记录一些个人及学习相关笔录  
文章内被 **{}** 的内容均为占位符，实际使用时应替换成实际内容

## 文章概要说明
每篇md文件开头均有文章概要，可为后期博客化埋点  
文章概要均以以下固定模版为格式  
详情配置以yaml类型为格式
```html
<details>
<summary>文章概要:</summary>
<pre hidden>
information:
    author: {author}
    title: {title}
    desc: {description}
    date: {date}
configure:
    skip: false
</pre>
</details>
```

### information配置说明:
| 参数 | 类型 | 必填 | 说明 |
|:----:|:----:|:----:|:----:|
| author | string | required | 作者 |
| title | string | required | 标题 |
| desc | string | optional | 详情描述 |
| date | date | optional | 创建时间 |
| update-time | date | optional | 更新时间 |
| type | string | optional | 分类 |
| tags | list | optional | 标签 |
| series | string | optional | 系列 |

### configure配置说明:
| 参数 | 类型 | 必填 | 说明 |
|:----:|:----:|:----:|:----:|
| skip | boolean | optional | 博客化时是否跳过该文件，默认值false |