xmlDeclaration()
rss(version: '2.0', 'xmlns:atom': 'http://www.w3.org/2005/Atom') {
    channel {
        title('JBake')
        newLine()
        link(config.site_host)
        newLine()
        'atom:link'(
            href: "${config.site_host}/${config.feed_file}",
            rel: 'self',
            type: 'application/rss+xml'
        )
        newLine()
        description('JBake Bootstrap Template')
        newLine()
        language('en-gb')
        newLine()
        pubDate(published_date.format('EEE, d MMM yyyy HH:mm:ss Z'))
        newLine()
        lastBuildDate(published_date.format('EEE, d MMM yyyy HH:mm:ss Z'))
        newLine()
        published_posts.each { post ->
            item {
                title(post.title)
                newLine()
                link("${config.site_host}/${post.uri}")
                newLine()
                pubDate(post.date.format('EEE, d MMM yyyy HH:mm:ss Z'))
                newLine()
                guid(isPermaLink: 'false', post.uri)
                newLine()
                description {
                    yield post.body
                }
                newLine()
            }
            newLine()
        }
    }
}
