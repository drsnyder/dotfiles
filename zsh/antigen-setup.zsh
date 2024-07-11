#source /usr/local/share/antigen/antigen.zsh
source /opt/homebrew/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Mine
antigen bundle jeffreytse/zsh-vi-mode

# Load the theme.
# antigen theme clean
antigen theme robbyrussell/oh-my-zsh themes/apple

# Tell Antigen that you're done.
antigen apply
