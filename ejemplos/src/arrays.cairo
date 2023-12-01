// Ejemplos - Arrays
// Podes ejecutar el ejemplo con 'scarb test -f arrays'
// Cairo Book: https://book.cairo-lang.org/ch03-01-arrays.html#arrays

// trait ArrayTrait<T> {
//     fn new() -> Array<T>;
//     fn append(ref self: Array<T>, value: T);
//     fn pop_front(ref self: Array<T>) -> Option<T> nopanic;
//     fn get(self: @Array<T>, index: usize) -> Option<Box<@T>>;
//     fn at(self: @Array<T>, index: usize) -> @T;
//     fn len(self: @Array<T>) -> usize;
//     fn is_empty(self: @Array<T>) -> bool;
//     fn span(self: @Array<T>) -> Span<T>;
// }

#[cfg(test)]
mod tests {
    use debug::PrintTrait;

    #[test]
    #[available_gas(200000)]
    fn test_array() {
        let mut lista: Array<u128> = ArrayTrait::new();

        lista.append(1); // Agrega el número 1 a la lista
        lista.append(2); // Agrega el número 2 a la lista
        lista.append(3); // Agrega el número 3 a la lista
        lista.append(4); // Agrega el número 4 a la lista

        'lista len()'
            .print(); // Imprime un mensaje indicando que se mostrará la longitud de la lista
        lista.len().print(); // Imprime la longitud de la lista

        '1er elemento'.print(); // Imprime un mensaje indicando que se mostrará el primer elemento
        let e = *lista
            .at(0); // Obtiene el primer elemento de la lista y lo asigna a la variable 'e'
        e.print(); // Imprime el primer elemento obtenido
    }
}

