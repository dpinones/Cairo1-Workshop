// Ejemplos - Structs
// Podes ejecutar el ejemplo con 'scarb test -f structs'
// Cairo Book: https://book.cairo-lang.org/ch05-01-defining-and-instantiating-structs.html

#[derive(Copy, Drop)]
struct User {
    active: bool,
    username: felt252,
    email: felt252,
    sign_in_count: u64,
}

#[cfg(test)]
mod tests {
    use super::User;
    use debug::PrintTrait;

    #[test]
    #[available_gas(200000)]
    fn test_structs() {
        let mut user1 = User {
            active: true,
            username: 'someusername123',
            email: 'someone@example.com',
            sign_in_count: 1
        }; // Creo un usuario

        user1.email.print();

        user1.email = 'anotheremail@example.com'; // Cambio el email

        user1.email.print();
    }
}
