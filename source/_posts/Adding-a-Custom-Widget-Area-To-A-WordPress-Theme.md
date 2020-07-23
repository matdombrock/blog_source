---
title: Adding a Custom Widget Area To A WordPress Theme
date: 2019-10-28 18:34:39
tags:
---
This guide will cover adding a custom widget area to a WordPress theme. For this example, we will be adding a new widget area to the top of an Archive page.

**This guide assumes that you have already setup a WordPress child theme.**

### Edit your functions.php
Add this code replacing the relevant data with your own.
```php
function archive_widgets_init() {
 
    register_sidebar( array(
        'name'          => 'Custom Archive Widget Area',
        'id'            => 'custom-archive-widget',
        'before_widget' => '<div class="archive-widget">',
        'after_widget'  => '</div>',
        'before_title'  => '<h2 class="archive-title">',
        'after_title'   => '</h2>',
    ) );
 
}
add_action( 'widgets_init', 'archive_widgets_init' );
```
### Add the follwing code to your theme file where you want to insert the new Widget area
```html
<?php if ( is_active_sidebar( 'custom-archive-widget' ) ) : ?>
	<div id="archive-widget-area" class="archive-widget-area widget-area" role="complementary">
	<?php dynamic_sidebar( 'custom-archive-widget' ); ?>
	</div>
<?php endif; ?>
```

### Adding new Widgets
You should now be able to see your new Widget area under Apperance -> Widgets. Add your Widgets here and they will show up one the page.