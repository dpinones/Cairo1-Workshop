# Cairo1-Workshop
Para resolver los ejercicios de este workshop deberán forkear este repositorio. 

Presentación [aquí](https://docs.google.com/presentation/d/1WtJ50Crzn2lCTa5sSPLdyzDgjMAdZMh0/edit?usp=sharing&ouid=115043156397432018408&rtpof=true&sd=true){:target="_blank"}

## Instalación de Cairo
Esto instalara la última versión de Cairo. 
```bash
curl --proto '=https' --tlsv1.2 -sSf https://docs.swmansion.com/scarb/install.sh | sh
```

Verificar instalación
```bash
$ scarb --version
scarb 2.3.1 (0c8def3aa 2023-10-31)
cairo: 2.3.1 (https://crates.io/crates/cairo-lang-compiler/2.3.1)
sierra: 1.3.0
```
[Cairo Book - Installation](https://book.cairo-lang.org/ch01-01-installation.html#installation-1){:target="_blank"}


## Orden de resolución de los ejercicios

1. mini-max-sum
2. find-digits
3. fruit-party
4. the-power-sum

## Cómo resolver los ejercicios

Comandos para los ejercicios:

```rust
// Ejercicio 1
scarb test -f mini_max_sum

// Ejercicio 2
scarb test -f find_digits

// Ejercicio 3
scarb test -f fruit_party

// Ejercicio 4
scarb test -f power_sum
```

***Objetivo que los test corran.***

## Recursos útiles

### Starknet
- [Starknet Book](https://book.starknet.io/)
- [Podcast introductorio de Uncommon Core](https://www.youtube.com/watch?v=-6BtBUbiUIU)
- [Scaling Ethereum efficiently](https://starkware.medium.com/scaling-ethereum-efficiently-d91a8a908cab) - Blog de Starkware

### Cairo 1.0
- [Cairo – a Turing-complete STARK-friendly CPU architecture](https://eprint.iacr.org/2021/1063) 
- [Cairo Book](https://cairo-book.github.io/title-page.html) - Libro de la comunidad
- [Cairo-rs](https://github.com/lambdaclass/cairo-rs) - Cairo VM en Rust
- [Cairo 1.0](https://github.com/starkware-libs/cairo) - Repositorio oficial de 
- [Alexandria](https://github.com/keep-starknet-strange/alexandria) - Librería de la comunidad
- [Starklings](https://github.com/shramee/starklings-cairo1) - Ejercicios introductorios para aprender Cairo 1.0 en Starknet
