// Ejercicio 2 - find-digits ⭐ 
// https://www.hackerrank.com/challenges/find-digits/problem

fn find_digits(n: u128) -> u128 {
    let mut n = n;
    let mut count = 0;
    
    // Itera mientras el número no sea cero
    loop {
        // Obtiene el dígito actual
        let digit = n % 10;

        // Verifica si el dígito es distinto de cero y es divisor de n
        if digit != 0 && n % digit == 0 {
            count += 1;
        }

        // Divide el número por 10 para pasar al siguiente dígito
        n /= 10;

        // Rompe el bucle si el número se reduce a cero
        if n == 0 {
            break;
        }
    };

    // Devuelve la cantidad de dígitos divisibles
    count
}

// Correr los tests usando 'scarb test -f find_digits'
#[cfg(test)]
mod tests {
    use super::find_digits;

    #[test]
    #[available_gas(200000)]
    fn find_digits_happy_path() {
        assert(find_digits(24) == 2, 'error find_digits_happy_path');
    }

    #[test]
    #[available_gas(200000)]
    fn find_digits_zero_digit() {
        assert(find_digits(10) == 1, 'error find_digits_zero_digit');
    }

    #[test]
    #[available_gas(200000)]
    fn find_digits_single_digit() {
        assert(find_digits(7) == 1, 'error find_digits_single_digit');
    }

    #[test]
    #[available_gas(200000)]
    fn find_digits_zero_number() {
        assert(find_digits(0) == 0, 'error find_digits_zero_number');
    }

    #[test]
    #[available_gas(200000)]
    fn find_digits_same_digits() {
        assert(find_digits(1111) == 4, 'error find_digits_same_digits');
    }
}
