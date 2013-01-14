#include <ruby.h>

static char* cremogema_alien_what() {
	return "a coisa mais gostosa do outro mundo";
}

/*
static VALUE cremogema_alien_what(VALUE self) {
	return rb_str_new2("a coisa mais gostosa do outro mundo");
}

void Init_cremogema() {
	VALUE klass = rb_define_class("Cremogema", rb_cObject);
	
	rb_define_method(klass, "alien_what", cremogema_alien_what, 0);
}
*/