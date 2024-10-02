#[derive(Drop)]
struct User {
    active: bool,
    username: ByteArray,
    email: ByteArray,
    sign_in_count: u64,
}

pub fn test_struct() {
    let user1 = User {
        active: true, username: "justuzair", email: "someone@example.com", sign_in_count: 1
    };
    let user2 = User {
        sign_in_count: 1, username: "someusername123", active: true, email: "someone@example.com"
    };

    println!("User1:: username: {:?}", user1.username);
    println!("User2:: username: {:?}", user2.username);

}

