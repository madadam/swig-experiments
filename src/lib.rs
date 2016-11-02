extern crate libc;

use libc::{c_char, c_int};
use std::ffi::CStr;

#[no_mangle]
pub extern "C" fn hello_world() {
    println!("Hello world!")
}

#[no_mangle]
pub extern "C" fn add_int(a:c_int, b:c_int) -> c_int {
    a + b
}

#[no_mangle]
pub unsafe extern "C" fn print_string(s: *const c_char) {
    let s = CStr::from_ptr(s).to_str().unwrap();
    println!("{}", s)
}
