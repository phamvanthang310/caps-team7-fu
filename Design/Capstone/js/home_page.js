jQuery(document).ready(function(){	
	set_background_height_equal_to_screen_height('intro_page_wrap');
	
	jQuery(".toggle_menu").click(function(){
		jQuery('.hidden_menu').toggle(500);
	});  
	jQuery(".toggle_menus").click(function(){
		jQuery('.hidden_menu').hide(500);
	});  
})

function check_device_height(){
	var current_height = $(window).height();
	return current_height;
}
function check_device_width(){
	var current_width = $(window).width();
	return current_width;
}
function set_background_height_equal_to_screen_height(target_div){
	var device_height = check_device_height();
	jQuery('.' + target_div ).height(device_height);
}