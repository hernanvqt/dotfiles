# Paquete instalados
 - zsh con `apt install zsh`
 - [alacritty](https://github.com/alacritty/alacritty/blob/master/INSTALL.md#install-the-rust-compiler-with-rustup)
 - [bspwm y sxhkd](https://www.maketecheasier.com/install-configure-bspwm/)
 - font Iosevka
 - polybar
 - mpv
 - [doom emacs](https://github.com/doomemacs/doomemacs#install)


## Anotaciones
### zsh
 1. Primer se instala zsh y luego se instala el [oh-my-zsh](https://ohmyz.sh/#install)

### Alacritty
 1. Clonar el directorio de alacritty
 2. Instalar compilar de Rust
 3. Compilar los archivos y el resultado se encontrará en un executable dentro de target/release

Es posible que tengamos [problemas con la font](https://www.behova.net/fonts-in-alacritty/)

### Bspwm y sxhkd
En default el touchpad no esta activado, asi que es necesario ver el [nombre del dispositivo](https://wiki.archlinux.org/title/Libinput#Via_xinput). Una vez visto el nombre y el comando apropiado:
```
$ xinput set-prop device option setting
```
Lo copiamos en nuestro config file de bspwmrc
### Font Iosevka
 1. [Manual Installation](https://github.com/be5invis/Iosevka)
 2. Y lo [instalamos](https://www.internalpointers.com/post/install-new-fonts-linux-command-line) 
 2. En este caso la familia es _Iosevka Term_ 

## dotfiles

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


