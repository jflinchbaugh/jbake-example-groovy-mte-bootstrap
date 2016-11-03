layout(
    'layout/main.tpl',
    true,
    bodyContents: contents {
        div(class: 'page-header') {
            h1('Blog')
        }
        published_posts.each { post ->
            a(href: post.uri) {
                h1(post.title)
            }
            p(
                new java.text.SimpleDateFormat(
                    'dd MMMM yyyy',
                    Locale.ENGLISH
                ).format(post.date)
            )
            p(post.body)
            hr()
        }
        p {
            yield 'Older posts are available in the '
            a(
                href: "${content.rootpath}${config.archive_file}",
                'archive'
            )
            yield '.'
        }
    }
)
