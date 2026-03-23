# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc
source ~/.bashrc_private

alias godot="~/Programs/GameEngines/Godot/Godot_v4.5-stable_linux.x86_64"

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'

export PYGAME_DETECT_AVX2=1
export GDK_SCALE=1
export PATH="$HOME/.local/bin:$PATH"
export CHROME_EXECUTABLE="chrome"

export ANTHROPIC_AUTH_TOKEN="ollama"
export ANTHROPIC_API_KEY=""
export ANTHROPIC_BASE_URL="http://localhost:11434"

# Added by LM Studio CLI tool (lms)
export PATH="$PATH:/home/sasi/.lmstudio/bin"

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"
