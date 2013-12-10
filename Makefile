# ZSH OR DIE, PUNKS
bindir ?= /usr/bin
bzr_revision = 
make:
	/usr/bin/gbc3 -e -a -g -t -p -m  xt7-player
	gba3 xt7-player
	mv xt7-player/xt7-player.gambas xt7-player/xt7-player
	
clean:

	rm -Rf `find . -name ".gambas"`
	rm -Rf `find . -name "*.gambas"`
	rm -Rf `find . -name ".directory"`
	
install:
	mkdir -p $(DESTDIR)$(bindir)
	mkdir -p $(DESTDIR)/usr/share/pixmaps/
	mkdir -p $(DESTDIR)/usr/share/applications/
	chmod +x xt7-player/xt7-player
	install -m 0755 xt7-player/xt7-player $(DESTDIR)$(bindir)
	install -m 0755 xt7-player/xt7-player.png $(DESTDIR)/usr/share/pixmaps/
	install -m 0755 xt7-player/xt7-player.desktop $(DESTDIR)/usr/share/applications/
	
uninstall:

	rm $(DESTDIR)$(bindir)/xt7-player
	rm $(DESTDIR)/usr/share/pixmaps/xt7-player.png
	rm $(DESTDIR)/usr/share/applications/xt7-player.desktop
	update-desktop-database
	update-menus