# dotfiles
El directorio dotfiles es subido a github y se usa stow para crear symbolic links de todo lo que haya en este directorio en el directorio padre. Por lo que es necesario añadir un `.stow-local-ignore` para evitar que se cree el symlink de .git y README.md por ejemplo.
El comando `stow .` creará los syslink del directorio en el que se encuentre. Si quisieramos eliminar todos los symbolic links creados, usaremos `stow -D .` y se eliminaran los del directorio padre. Se queremos más info iremos al siguiente página: 
[Give Your Dotfiles a Home with GNU Stow](https://www.youtube.com/watch?v=CxAT1u8G7is)

---
# Setting up the desktop enviroment
1. [bspwm y sxhkd](https://www.maketecheasier.com/install-configure-bspwm/)
2. font Iosevka Nerd Font
3. polybar
4. Alacritty (el sxhkd tiene esto, si no en bspwm no se abre el terminal)

### Bspwm y sxhkd
En default el touchpad no esta activado, asi que es necesario ver el [nombre del dispositivo](https://wiki.archlinux.org/title/Libinput#Via_xinput). Una vez visto el nombre y el comando apropiado:
```
$ xinput set-prop device option setting
```
Lo copiamos en nuestro config file de bspwmrc

### Font Iosevka Term Nerd Font
1. [Github repository para descargar el font específico](https://github.com/ryanoasis/nerd-fonts/releases)
2. E [instalamos](https://www.internalpointers.com/post/install-new-fonts-linux-command-line) la fuente 

### [Alacritty](https://github.com/alacritty/alacritty/blob/master/INSTALL.md#install-the-rust-compiler-with-rustup)
1. Clonar el directorio de alacritty
2. Instalar compilar de Rust
3. Compilar los archivos y el resultado se encontrará en un executable dentro de target/release

---
# Lista de programas en el dotfiles
1. Git
2. ZSH
3. Neovim (0.9)
4. Tmux
5. mpv

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

## ZSH
```
sudo apt install zsh
```
Y luego se instalará el [ohmyzsh](https://ohmyz.sh/#install)

## Neovim
Es una instalación [from source](https://github.com/neovim/neovim/wiki/Building-Neovim)

O bien usamos el [NvChad](https://nvchad.com/docs/quickstart/install), en el que será necesario añadir la carpeta `custom` del dotfiles, la dirección es `~/.config/nvim/lua/`.

## Tmux
Se instala con: 
```
sudo apt install tmux
```
Y usaremos la conf de los [dotfiles](https://github.com/hernanvqt/dotfiles)


## Alacritty


# Weird problems 
## Ubuntu's stopped playing music/video files & Youtube in any browser
[Reset pulseaudio or pipewire](https://www.reddit.com/r/pop_os/comments/v3g2w9/is_there_a_cli_command_to_restart_pipewire/)

[Maybe kill this too](killall pulseaudio; rm -r ~/.config/pulse/*)
