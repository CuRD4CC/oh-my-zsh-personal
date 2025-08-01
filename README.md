# Dotfiles de ZSH + Antigen + Pure

Configuración personalizada de Zsh con plugins útiles y el tema [Pure](https://github.com/sindresorhus/pure).
## Instalación con script
Dar permisos de ejecucion a script
chmod +x script_term.sh
Luego ejecutarlo 
./script_term.sh

## Problemas comunes
Si no carga cuando arranca la terminal asegurarse que se este ejecutando ZSH
revisar en 
~/.bashrc
Agregar exec zsh


## Instalación rápida (sin testeo)

```bash
git clone https://github.com/TU_USUARIO/dotfiles.git ~/dotfiles
ln -s ~/dotfiles/.zshrc ~/.zshrc

