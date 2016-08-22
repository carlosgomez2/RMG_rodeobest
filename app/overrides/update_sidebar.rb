Deface::Override.new(:virtual_path  => 'spree/home/index',
        name: 'removing landing-sidebar',
        remove: '[data-hook="homepage_sidebar_navigation"]')
