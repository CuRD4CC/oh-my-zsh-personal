#!/bin/bash

set -e  # Salir si hay error

### 🔧 CONFIGURACIÓN ###
GITHUB_REPO="https://github.com/CuRD4CC/oh-my-zsh-personal.git"
DOTFILES_DIR="$HOME/dotfiles"
ZSHRC_LINK="$HOME/.zshrc"
ANTIGEN_PATH="$DOTFILES_DIR/.oh-my-zsh/antigen.zsh"
PURE_DIR="$HOME/.zsh/pure"

echo "🧪 Verificando si Zsh está instalado..."
if ! command -v zsh >/dev/null 2>&1; then
    echo "⚙️ Instalando Zsh..."
    if [ -f /etc/debian_version ]; then
        sudo apt update && sudo apt install -y zsh
    elif [ -f /etc/redhat-release ]; then
        sudo dnf install -y zsh
    else
        echo "❌ No se reconoce la distribución. Instalá Zsh manualmente."
        exit 1
    fi
else
    echo "✅ Zsh ya está instalado."
fi

echo "📦 Clonando dotfiles desde GitHub si es necesario..."
if [ -d "$DOTFILES_DIR" ]; then
    echo "📁 Ya existe $DOTFILES_DIR, saltando clonación."
else
    git clone "$GITHUB_REPO" "$DOTFILES_DIR"
fi

echo "🔗 Enlazando .zshrc..."
ln -sf "$DOTFILES_DIR/.zshrc" "$ZSHRC_LINK"

echo "🔁 Estableciendo Zsh como shell predeterminada..."
ZSH_BIN="$(command -v zsh)"
CURRENT_SHELL="$(getent passwd $USER | cut -d: -f7)"
if [ "$CURRENT_SHELL" != "$ZSH_BIN" ]; then
    sudo chsh -s "$ZSH_BIN" "$USER"
else
    echo "✅ Zsh ya es la shell predeterminada."
fi

echo "🎨 Instalando tema Pure si es necesario..."
if [ -d "$PURE_DIR" ]; then
    echo "🎨 Tema Pure ya está instalado en $PURE_DIR."
else
    mkdir -p "$HOME/.zsh"
    git clone https://github.com/sindresorhus/pure.git "$PURE_DIR"
fi

echo "🌀 Ejecutando Zsh temporalmente para aplicar Antigen..."
ZDOTDIR="$HOME" zsh -ic exit

# 🛠️ Correcciones post-instalación
echo "🔒 Corrigiendo permisos inseguros..."
sudo chmod -R go-w ~/.zsh ~/.antigen

echo "📂 Asegurando directorio completions..."
sudo mkdir -p ~/.antigen/bundles/robbyrussell/oh-my-zsh/cache/completions

echo "🎉 ¡Listo! Reiniciá la terminal o cerrá sesión para aplicar los cambios."

