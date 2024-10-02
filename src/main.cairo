use core::dict::Felt252DictEntryTrait;
pub mod array_module;
pub mod copy_trait;
pub mod struct_module;
use struct_module::RectangleImpl;
use struct_module::RectangleTrait;


use core::dict::Felt252Dict;




fn main() {
    //////////////////////////////////////////////////////////////
    ///                     Array Module                      ///
    /////////////////////////////////////////////////////////////
    
    // let mut my_arr:Array<u8> = array_module::test_array();
    // println!("Array: {:?}", my_arr);
    // println!("Length: {}", my_arr.len());
    // my_arr.append(20);
    // println!("Array: {:?}", my_arr);

    //////////////////////////////////////////////////////////////
    ///                     Dictionary Module                 ///
    /////////////////////////////////////////////////////////////

    // let mut balances: Felt252Dict<u64> = Default::default();
    // balances.insert('Alex', 100);
    // balances.insert('Maria', 200);
    // // balance of alex
    // println!("Alex's balance: {}", balances.get('Alex'));
    // assert!(balances.get('Alex') == 100);
    // // balance of Maria
    // println!("Maria's balance: {}", balances.get('Maria'));
    // assert!(balances.get('Maria') == 200);
    // // update balance of maria and get previous value
    // let (entry,prev_value) = balances.entry('Maria');
    // balances = entry.finalize(300); // get back ownership of dictionary
    // println!("Previous value: {}", prev_value);
    // assert!(prev_value == 200);
    // println!("Maria's new balance: {}", balances.get('Maria'));
    // assert!(balances.get('Maria') == 300);

    //////////////////////////////////////////////////////////////
    ///                     Copy Trait                        ///
    /////////////////////////////////////////////////////////////
    
    // copy_trait::test_copy_trait();

    
    //////////////////////////////////////////////////////////////
    ///                   SnapShots Module                    ///
    /////////////////////////////////////////////////////////////
    // let mut my_arr:Array<u8> = array_module::test_array();
    // let before_snapshot = @my_arr; // take snapshot of all elements at this point in time
    // my_arr.append(20);
    // my_arr.append(30);
    // my_arr.append(100);
    // println!("Array after snapshot: {:?}", my_arr);
    // println!("Array before snapshot: {:?}", before_snapshot);

    // NOTE - * is desnapshot operator, used similar to @

    //////////////////////////////////////////////////////////////
    ///                   Structs Module                    ///
    /////////////////////////////////////////////////////////////

    struct_module::test_struct();
    let rect = struct_module::create_rectangle(10,20);
    println!("Length , Breadth = {:?}", rect.dimension() );
    println!("Area of rectangle: {:?}",rect.area());

    // let rect1 = Rectangle { width: 30, height: 50, };
    // println!("Area is {}", rect1.area());
}

fn foo(x: u8, y: u8) {}

fn test_felt252(){
    // max value of felt252
    let x: felt252 = 3618502788666131213697322783095070105623107215331596699973092056135872020480;
    let y: felt252 = 1;
    // wraps-around
    println!("x + y = {}", x + y);
    assert(x + y == 0, 'P == 0 (mod P)');
} 

fn test_unsigned_integers(){
    let x:u8 = 127; // will overflow and panic if greater than supported value
    let y:u8 = 128;
    println!("x + y = {}", x + y);
}