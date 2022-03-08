export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"

eval "$(/opt/homebrew/bin/brew shellenv)"

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit

  autoload -Uz vcs_info
  precmd_vcs_info() { vcs_info }
  precmd_functions+=( precmd_vcs_info )
  setopt prompt_subst
  RPROMPT='${vcs_info_msg_0_}'
  # PROMPT='${vcs_info_msg_0_}%# '

  zstyle ':vcs_info:*' stagedstr '+' 
  zstyle ':vcs_info:*' unstagedstr '!' 
  zstyle ':vcs_info:*' check-for-changes true
  zstyle ':vcs_info:*' actionformats '%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
  zstyle ':vcs_info:*' formats '%F{5}[%F{2}%b%F{5}] %F{2}%c%F{3}%u%f '

  zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
  zstyle ':vcs_info:*' enable git hg
  +vi-git-untracked() {
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
    [[ $(git ls-files --other --directory --exclude-standard | sed q | wc -l | tr -d ' ') == 1 ]] ; then
    hook_com[unstaged]+='%F{1}?%f'
  fi
  }

fi