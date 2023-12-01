// Ejemplos - Loops
// Podes ejecutar el ejemplo con 'scarb test -f loops'
// Cairo Book: https://book.cairo-lang.org/ch02-05-control-flow.html?highlight=loop#repetition-with-loops

#[cfg(test)]
mod tests {
    use debug::PrintTrait;

    #[test]
    #[available_gas(200000)]
    fn test_loops() {
        // Ejemplo de un loop sencillo
        let mut i: usize = 0;
        loop {
            if i > 5 {
                break (); // Termina el loop
            }
            'again'.print();
            i += 1; // Incrementa el indice
        };

        // Ejemplo de un loop con un array
        let mut arr = ArrayTrait::new();
        arr.append(1);
        arr.append(2);
        arr.append(3);

        let mut idx = 0;
        loop {
            if idx == arr.len() { // Si el indice es igual a la longitud del array
                break (); // Termina el loop
            }

            let num = *arr.at(idx);
            num.print(); // Imprime el numero en la posicion del indice
            idx += 1; // Incrementa el indice
        };

        // Ejemplo de un loop con asignación
        let mut counter = 0;

        let result = loop {
            if counter == 10 {
                break counter * 2;
            }
            counter += 1;
        };

        'The result is '.print();
        result.print();
    }
}
