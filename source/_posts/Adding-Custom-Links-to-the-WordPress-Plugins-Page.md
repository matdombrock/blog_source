---
title: Adding Custom Links to the WordPress Plugins Page
date: 2019-10-29 18:33:00
tags:
---
## Introduction
This is unfountunatly not a very well documented feature, so I thought I would include a quick guide here.

## The Code
You just need to add an action hook and include an array of links:
```php
add_action( 'plugin_action_links_' . plugin_basename( __FILE__ ), 'my_plugin_action_links' );
function my_plugin_action_links( $links ) {
	$links = array_merge( array(
		'<a href="' . esc_url( admin_url( '/options-general.php' ) ) . '">' . __( 'Settings', 'textdomain' ) . '</a>'
	), $links );
	return $links;
}
```
You can change '/options-general.php' to be a relative link to your desired page and you can also change 'Settings' to display another string of text for the link title. 