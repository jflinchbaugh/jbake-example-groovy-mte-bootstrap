div(class: 'navbar navbar-default navbar-fixed-top', role: 'navigation') {
    div(class: 'container') {
        div(class: 'navbar-header') {
            button(
                type: 'button',
                class: 'navbar-toggle',
                'data-toggle': 'collapse',
                'data-target': '.navbar-collapse'
            ) {
               span(class: 'src-only', 'Toggle navigation')
               span(class: 'icon-bar')
               span(class: 'icon-bar')
               span(class: 'icon-bar')
            }
            a(class: 'navbar-brand', href: content.rootpath, 'JBake')
        }
        div(class: 'navbar-collapse collapse') {
            ul(class: 'nav navbar-nav') {
                li {
                    a(href: "${content.rootpath}index.html", 'Home')
                }
                li {
                    a(href: "${content.rootpath}about.html", 'About')
                }
                li {
                    a(
                        href: "${content.rootpath}${config.feed_file}",
                        'Subscribe'
                    )
                }
                li(class: 'dropdown') {
                    a(
                        href: '#',
                        class: 'dropdown-toggle',
                        'data-toggle': 'dropdown'
                    ) {
                        yieldUnescaped 'Dropdown '
                        b(class: 'caret', '')
                    }
                    ul(class: 'dropdown-menu') {
                        li {
                            a(href: '#', 'Action')
                        }
                        li {
                            a(href: '#', 'Another action')
                        }
                        li {
                            a(href: '#', 'Something else here')
                        }
                        li(class: 'divider')
                        li(class: 'dropdown-header', 'Nav header')
                        li {
                            a(href: '#', 'Separated link')
                        }
                        li {
                            a(href: '#', 'One more separated link')
                        }

                    }
                }
            }
        }
    }
}
