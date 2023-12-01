// Ejemplos - Functions
// Podes ejecutar el ejemplo con 'scarb test -f functions'
// Cairo Book: https://book.cairo-lang.org/ch02-03-functions.html?highlight=func#functions

fn suma(param1: u128, param2: u128) -> u128 {
    param1 + param2 // Retorna la suma de los dos parámetros
}

#[cfg(test)]
mod tests {
    use super::suma;
    use debug::PrintTrait;

    #[test]
    #[available_gas(200000)]
    fn test_functions() {
        let resultado = suma(1, 2); // Llamada a la función `suma` con los argumentos 1 y 2
        resultado.print(); // Imprime el resultado de la suma
    }
}
