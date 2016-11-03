div(id: 'footer') {
    div(class: 'container') {
        p(class: 'muted credit') {
            yieldUnescaped '&copy; 2014 | Mixed with '
            a(href: 'http://getbootstrap.com/', 'Bootstrap v3.1.1')
            yieldUnescaped ' | Baked with '
            a(href: 'http://jbake.org/', "JBake ${version}")
        }
    }
}
