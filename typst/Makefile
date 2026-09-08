.PHONY: compile launch

compile:
	nix develop --command typst compile main.typ main.pdf

launch:
	nix develop --command typst watch main.typ main.pdf > /dev/null 2>&1 & disown
	xdg-open main.pdf > /dev/null 2>&1 & disown
	nvim main.typ
