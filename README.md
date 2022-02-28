# dotfiles
El directorio dotfiles es subido a github y se usa stow para crear symbolic links de todo lo que haya en este directorio en el directorio padre. Por lo que es necesario añadir un `.stow-local-ignore` para evitar que se creer el sym link de .git y README.md por ejemplo.

---

`stow .`

Hará todos los sys link del directorio en el que se encuentre

---

Si quisieramos eliminar todos los symbolic links creados, usaremos
`stow -D .`
Y se eliminaran los del directorio padre

## Reference

[Give Your Dotfiles a Home with GNU Stow](https://www.youtube.com/watch?v=CxAT1u8G7is)
