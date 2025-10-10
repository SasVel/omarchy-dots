set -g fish_greeting "Drink some water!"

if status is-interactive
    # Commands to run in interactive sessions can go here
	alias update "sudo pacman -Syu"
	alias godot "$HOME/Programs/GameEngines/Godot_v4.5-stable_linux.x86_64"
	
	set -gx EDITOR nvim

	source "$HOME/dotfiles/.bashrc_private"
  export XKB_DEFAULT_LAYOUT=us,bg
  export XKB_DEFAULT_OPTIONS=grp:alt_shift_toggle
end
