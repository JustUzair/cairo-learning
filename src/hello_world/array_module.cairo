use core::array::ArrayTrait;
use core::array::Array;

pub fn test_array()-> Array<u8> {
    let mut my_arr:Array<u8> = ArrayTrait::new();
    my_arr.append(0);
    my_arr.append(1);
    my_arr.append(2);
    
    return my_arr;
}
