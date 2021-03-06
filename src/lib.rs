extern crate libc;

use libc::{c_char, c_int, c_void};
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

#[no_mangle]
pub unsafe extern "C" fn call(user_data: *mut c_void, cb: extern "C" fn(user_data: *mut c_void)) {
    cb(user_data)
}
