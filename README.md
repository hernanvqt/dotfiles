# dotfiles

El directorio dotfiles es subido a github y se usa stow para crear symbolic links de todo lo que haya en este directorio en el directorio padre. Por lo que es necesario añadir un `.stow-local-ignore` para evitar que se creer el sym link de .git y README.md por ejemplo.
`stow .`
Hará todos los sys link del directorio en el que se encuentre. Si quisieramos eliminar todos los symbolic links creados, usaremos
`stow -D .`
Y se eliminaran los del directorio padre
--- 
## Reference
[Give Your Dotfiles a Home with GNU Stow](https://www.youtube.com/watch?v=CxAT1u8G7is)

---
# Setting up the desktop enviroment
    1. [bspwm y sxhkd](https://www.maketecheasier.com/install-configure-bspwm/)
    2. font Iosevka
    3. polybar

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

---
# Lista de programas en el dotfiles
    1. Git                                                                                                                       
    2. Neovim
    3. Tmux
    4. ZSH
 - [alacritty](https://github.com/alacritty/alacritty/blob/master/INSTALL.md#install-the-rust-compiler-with-rustup)
 - mpv
 - [doom emacs](https://github.com/doomemacs/doomemacs#install)



### Alacritty
 1. Clonar el directorio de alacritty
 2. Instalar compilar de Rust
 3. Compilar los archivos y el resultado se encontrará en un executable dentro de target/release

Es posible que tengamos [problemas con la font](https://www.behova.net/fonts-in-alacritty/)

# Lista de programas
    1. Git
    2. Neovim
    3. Tmux
    4. ZSH
# Programas
---
## Git
En primer lugar se instala git
```
sudo apt install git
```
Existen multiples maneras de clonar un repositorio, *HTTPS, SSH o GitHub CLI*, en mi caso yo prefiero SSH. Para ello es necesario crear una private key y una public key.
### 1. Creamos las keys con su generator
```
ssh-keygen -t ed25519 -C "your_email@example.com"
```
### 2. Añadimos la key al ssh-agent
```
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```
[Connecting to GitHub with SSH](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)
### 3. Declarar nuestra identidad
Es necesario identificar nuestro pc con nombre y email.
```
git config --global user.email "you@example.com"
git config --global user.name "Your Name"                                                                                                                                                                                                                                 
```
## Neovim
La instalación es sencilla
```
sudo apt install neovim
```
pero será la configuración lo relevante, en este caso guardaremos una configuración ya hecha en un repositorio de [dotfiles](https://github.com/hernanvqt/dotfiles), en teoría se debe encontrar en `.config/nvim/init.vim`

Aquí vendrán guardados unas configuración que podremos modificar o bien buscar en google y copiarlas, en la parte final estarán los plugins.
Pero para ello es necesario instalar vim-plug
```
h -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
O el que sea, pero debe ser instalado para utilizar la parte final del archivo `init.vim`, en el caso de que no esté, se debe añadir a este archivo lo siguiente:

```
call plug#begin()
Plug 'junegunn/vim-easy-align'
call plug#end()
```
Siendo relevante solo los call, y dentro los plugins que se quieran añadir. Y luego los instalaremos con el comando `:PlugInstall` dentro de **nvim**
---
[vim-plug](https://github.com/junegunn/vim-plug)
## Tmux
Se instala con: 
```
sudo apt install tmux
```
Y usaremos la conf de los [dotfiles](https://github.com/hernanvqt/dotfiles)

## ZSH
```
sudo apt install zsh
```
Y luego se instalará el [ohmyzsh](https://ohmyz.sh/#install)



