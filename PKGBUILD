#
# Maintainer: Mahmoud Mohamed (00xWolf) <mmsaeed509@gmail.com> , <https://github.com/mmsaeed509>
#

pkgname=exodia-skeleton
pkgver=3.0
pkgrel=2
pkgdesc="Skeleton Files For Exodia OS"
arch=('any')
url="https://github.com/Exodia-OS/exodia-skeleton"
license=('GPL3')
groups=("exodia-os-skeleton")

prepare() {

	cp -af ../misc   ${srcdir}
	cp -af ../config ${srcdir}
	cp -af ../cache  ${srcdir}

}

package() {

	local skel_dir=${pkgdir}/etc/skel
	local cache_dir=${skel_dir}/.cache
	local config_dir=${skel_dir}/.config

	mkdir -p "$skel_dir" "$cache_dir" "$config_dir"

	# Copy cache files
	install -Dm 644 ${srcdir}/cache/rofi3.druncache		"$cache_dir"/rofi3.druncache

	# Copy config files
	cp -r ${srcdir}/config/* 			"$config_dir"

	install -Dm 644 ${srcdir}/config/mimeapps.list       "$config_dir"/mimeapps.list

	# Copy misc files
	cp -r ${srcdir}/misc/.mpd  		    "$skel_dir"
	cp -r ${srcdir}/misc/.mplayer 		"$skel_dir"
	cp -r ${srcdir}/misc/.ncmpcpp 		"$skel_dir"
	cp -r ${srcdir}/misc/.Xresources.d 	"$skel_dir"
	cp -r ${srcdir}/misc/Templates 		"$skel_dir"
	
	install -Dm 644 ${srcdir}/misc/.dmrc 	     "$skel_dir"/.dmrc
	install -Dm 644 ${srcdir}/misc/.fehbg 		 "$skel_dir"/.fehbg
	install -Dm 644 ${srcdir}/misc/.gtkrc-2.0 	 "$skel_dir"/.gtkrc-2.0
	install -Dm 644 ${srcdir}/misc/.hushlogin 	 "$skel_dir"/.hushlogin
	install -Dm 644 ${srcdir}/misc/.p10k.zsh     "$skel_dir"/.p10k.zsh
	install -Dm 644 ${srcdir}/misc/.Xresources   "$skel_dir"/.Xresources
	install -Dm 644 ${srcdir}/misc/.xsettingsd   "$skel_dir"/.xsettingsd
	install -Dm 644 ${srcdir}/misc/.zshrc        "$skel_dir"/.zshrc

	# Make scripts executable
	chmod +x "$skel_dir"/.ncmpcpp/scripts/{album-art,ncmpcpp-art,notify}
	chmod +x "$config_dir"/ranger/scope.sh

}
