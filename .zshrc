# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
#	export ZSH="$HOME/.oh-my-zsh"
###########################################testtesttesteststeststes
# Carga Antigen
# source ~/.oh-my-zsh/antigen.zsh
export DOTFILES="$HOME/dotfiles"
source "$DOTFILES/.oh-my-zsh/antigen.zsh"

# Inicializa colección de Oh My Zsh
antigen use oh-my-zsh

# Oh My Zsh plugins 
antigen bundle git
antigen bundle git-prompt
antigen bundle z
antigen bundle pip
antigen bundle kubectl
#antigen bundle vi-mode
antigen bundle docker
antigen bundle docker-compose
#antigen bundle copydir
antigen bundle copyfile
antigen bundle copybuffer
# Plugins externos 1er parte
#antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Theme Pure (repositorio sindresorhus/pure):
#antigen bundle sindresorhus/pure
# Cargando zsh/nearcolor hex en 256-colors o xterm-256color:
# zmodload zsh/nearcolor
export TERM=xterm-256color
# Path (PWD): un verde azulado vibrante
zstyle :prompt:pure:path            color 51
# Git: rama principal en rosa brillante
zstyle :prompt:pure:git:branch      color 201
# Git: nombre de rama cached (cuando no está fresco) en naranja claro
zstyle :prompt:pure:git:branch:cached color 214
# Git: indicador de dirty en amarillo neón
zstyle :prompt:pure:git:dirty       color 226
# Git: acción en curso (rebase, merge, etc.) en azul celeste
zstyle :prompt:pure:git:action      color 81
# Git: stash icon en púrpura
zstyle :prompt:pure:git:stash       color 135
# Git: flechas de upstream/downstream en verde lima
zstyle :prompt:pure:git:arrow       color 118
# Tiempo de ejecución largo en rojo anaranjado
zstyle :prompt:pure:execution_time  color 202
# Resultado del último comando
zstyle :prompt:pure:prompt:success  color 82   # verde claro
zstyle :prompt:pure:prompt:error    color 196  # rojo brillante
# Virtualenv (si lo usas) en morado suave
zstyle :prompt:pure:virtualenv      color 141
# Host y usuario (cuando SSH) para diferenciarlo bien
zstyle :prompt:pure:user            color 45   # turquesa oscuro
zstyle :prompt:pure:host            color 75   # azul oscuro
# Continuation prompt (PS2) en gris oscuro para no robar foco
zstyle :prompt:pure:prompt:continuation color 240
# Trabajos suspendidos (jobs) en rojo neón
zstyle :prompt:pure:suspended_jobs  color 196

# Plugins externos 2da parte
antigen bundle zsh-users/zsh-syntax-highlighting

# Aplicando  el prompt Pure
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

# Aplicando todos los bundles
antigen apply


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="dpoggi"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#	plugins=(z git docker kubectl sudo zsh-autosuggestions zsh-syntax-highlighting)

#	source $ZSH/oh-my-zsh.sh

# 	Tema PURE
#	fpath+=($HOME/.zsh/pure)
#	autoload -U promptinit; promptinit

# —— Pure Theme: paleta más colorida para fondo oscuro ——

#	prompt pure

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
