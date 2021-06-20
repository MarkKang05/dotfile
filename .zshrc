# If you come from bash you might have to change your $PATH.  export PATH=$HOME/bin:/usr/local/bin:$PATH Path to your oh-my-zsh installation.  
ZSH=/usr/share/oh-my-zsh/ 
#Set name of the theme to load --- if set to "random", it will load a random theme each time oh-my-zsh is loaded, in which case, to know which specific one was loaded, run: echo $RANDOM_THEME See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes 
#ZSH_THEME="agnoster" 
ZSH_THEME="robbyrussell" 


#Set list of themes to pick from when loading at random Setting this variable when ZSH_THEME=random will cause zsh to load a theme from this variable instead of looking in $ZSH/themes/ If set to an empty array, this variable will have no effect.  ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" ) Uncomment the following line to use case-sensitive completion.  CASE_SENSITIVE="true" Uncomment the following line to use hyphen-insensitive completion.  Case-sensitive completion must be off. _ and - will be interchangeable.  HYPHEN_INSENSITIVE="true" Uncomment the following line to disable bi-weekly auto-update checks.  DISABLE_AUTO_UPDATE="true" 
# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#ibus-daemon -drx
#export GTK_IM_MODULE=ibus
#export XMODIFIERS=@im=ibus
#export QT_IM_MODULE=ibus
#ibus-daemon -drx



alias cls="clear"
alias pi="ssh pi@192.168.1.32"
alias annekey="sudo ~/Documents/ObinsKit_1.1.5_x64/obinskit --no-sandbox"
alias vi="nvim"
alias vim="nvim"
alias nyancat="~/Documents/nyancat/src/nyancat"
alias sleep_com="systemctl suspend && exit"
alias eclipse="~/Documents/eclipse/eclipse"
alias kakaotalk="export GTK_IM_MODULE=ibus && export XMODIFIERS=@im=ibus && export QT_IM_MODULE=ibus && ibus-daemon -drx && wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Kakao/KakaoTalk/KakaoTalk.exe"
set clipboard+=unnamedplus

export PATH=$PATH:/home/markkang05/snap/flutter/common/flutter/bin
export CHROME_EXECUTABLE=/var/lib/snapd/snap/bin/chromium


ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

DEFAULT_USER="markkang05"

run(){
    if [ "$#" -ne 1 ]; then
        echo "Usage: cr <file.cpp>"
    else
        name=$(echo $1 | cut -f 1 -d '.')
        g++ $1 -o output; ./output
    fi
}

#  LEFT="The time is"
#  RIGHT="$(date) "
#  RIGHTWIDTH=$(($COLUMNS-${#LEFT}))
#  print $LEFT${(l:$RIGHTWIDTH::.:)RIGHT}
#}
#PS1="foo > "
# run() {
    # Run *.cpp file with C++17
#    if [ ${1:(-4)} == ".cpp" ]; then
#        g++ -std=c++17 -o ${1::-4} $1
#        ./${1::-4}
#    fi
#}
export TERM=xterm-256color
