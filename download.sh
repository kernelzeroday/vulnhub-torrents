cd torrents
curl https://download.vulnhub.com/ > filelist
for i in `cat filelist | grep torrent | tr -s ' '|cut -f2 -d' ' | sed 's/^\.//g'` ; do wget -c  "https://download.vulnhub.com$i" ; done
