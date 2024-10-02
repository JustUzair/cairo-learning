#[derive(Copy,Drop)]
struct Point {
    x: u128,
    y: u128,
}

pub fn test_copy_trait(){ 
    let p1:Point = Point { x: 5, y: 10 };
    foo(p1);
}

fn foo(p:Point) {}