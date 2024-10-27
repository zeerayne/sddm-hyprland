# Define the PREFIX variable
PREFIX ?= /usr
SRC=src

# Default target
all: clean install

prepare:
	mkdir -p $(PREFIX)/share/hyde/sddm
	mkdir -p /etc/sddm.conf.d/

install: prepare
	@install -D $(SRC)/hyprland.conf $(PREFIX)/share/hyde/sddm/hyprland.conf && echo "[Installed] $(PREFIX)/share/hyde/sddm/hyprland.conf" 
	@install -D $(SRC)/sddm-hyprland.conf /etc/sddm.conf.d/sddm-hyprland.conf && echo "[Installed] /etc/sddm.conf.d/sddm-hyprland.conf"
	@sed -i 's|CompositorCommand=.*|CompositorCommand=Hyprland -c $(PREFIX)/share/hyde/sddm/hyprland.conf|' /etc/sddm.conf.d/sddm-hyprland.conf &&	echo "[default sddm conf] $(PREFIX)/share/hyde/sddm/hyprland.conf" 


clean:
	@rm -rf $(PREFIX)/share/hyde/sddm && echo "[cleaned] $(PREFIX)/share/hyde/sddm"
	@rm -rf /etc/sddm.conf.d/sddm-hyprland.conf	&& echo "[cleaned] /etc/sddm.conf.d/sddm-hyprland.conf"

.PHONY: all install prepare