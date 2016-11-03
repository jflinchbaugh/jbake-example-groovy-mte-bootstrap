meta(charset: 'utf-8') newLine()
title(config.blog_title ?: 'JBake') newLine()
meta(name: 'viewport', content: 'width=device-width, initial-scale=1.0')
meta(name: 'description', content: '')
meta(name: 'author', content: '')
meta(name: 'keywords', content: '')
meta(name: 'generator', content: 'JBake')
link(rel: 'stylesheet', href: "${content.rootpath}css/bootstrap.min.css")
link(rel: 'stylesheet', href: "${content.rootpath}css/asciidoctor.css")
link(rel: 'stylesheet', href: "${content.rootpath}css/base.css")
link(rel: 'stylesheet', href: "${content.rootpath}css/prettify.css")
yieldUnescaped '<!--[if lt IE 9]>'
script(src: "${content.rootpath}js/html5shiv.min.js")
yieldUnescaped '<![endif]-->'
link(
    rel: 'apple-touch-icon-precomposed',
    sizes: '114x114',
    href: '../assets/ico/apple-touch-icon-114-precomposed.png'
)
link(
    rel: 'apple-touch-icon-precomposed',
    sizes: '72x72',
    href: '../assets/ico/apple-touch-icon-72-precomposed.png'
)
link(
    rel: 'apple-touch-icon-precomposed',
    href: '../assets/ico/apple-touch-icon-57-precomposed.png'
)
link(
    rel: 'shortcut icon',
    href: "${content.rootpath}favicon.ico"
)
