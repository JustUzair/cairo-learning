pub mod main;
pub fn add(left: usize, right: usize) -> usize {
    left + right
}

#[cfg(test)] // lets compiler know only to run this when testing
pub mod test;