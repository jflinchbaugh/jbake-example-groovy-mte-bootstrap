layout(
    'layout/main.tpl',
    true,
    bodyContents: contents {
        div(class: 'page-header') {
            h1(content.title)
        }
        p {
            em(content.date.format('dd MMMM yyyy'))
        }
        p {
            yieldUnescaped content.body
        }
    }
)
