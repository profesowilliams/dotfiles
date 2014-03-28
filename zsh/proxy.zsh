CurrentLocation=`networksetup -getcurrentlocation`
VPNConnected=`ifconfig | grep -c utun0`

if [ "$VPNConnected" = "1" ]
	then
	#echo "Proxy Enabled"
		export PROXY='127.0.0.1'; export http_proxy="http://${PROXY}:8080" && export _proxy="$http_proxy" https_proxy="$http_proxy" ftp_proxy="$http_proxy" rsync_proxy="${PROXY}:8080" _PROXY="$http_proxy" HTTP_PROXY="$http_proxy" HTTPS_PROXY="$http_proxy" FTP_PROXY="$http_proxy" RSYNC_PROXY="${PROXY}:8080"; unset PROXY
elif [ "$CurrentLocation" = "Work" ]
	then
	#echo "Proxy Enabled"
		export PROXY='127.0.0.1'; export http_proxy="http://${PROXY}:8080" && export _proxy="$http_proxy" https_proxy="$http_proxy" ftp_proxy="$http_proxy" rsync_proxy="${PROXY}:8080" _PROXY="$http_proxy" HTTP_PROXY="$http_proxy" HTTPS_PROXY="$http_proxy" FTP_PROXY="$http_proxy" RSYNC_PROXY="${PROXY}:8080"; unset PROXY
elif [ "$CurrentLocation" = "Home" ]
	then
		#echo "Proxy Disabled"
		export PROXY=''; export http_proxy="" && export _proxy="$http_proxy" https_proxy="$http_proxy" ftp_proxy="$http_proxy" rsync_proxy="${PROXY}" _PROXY="$http_proxy" HTTP_PROXY="$http_proxy" HTTPS_PROXY="$http_proxy" FTP_PROXY="$http_proxy" RSYNC_PROXY="${PROXY}"; unset PROXY
	else
		export PROXY=''; export http_proxy="" && export _proxy="$http_proxy" https_proxy="$http_proxy" ftp_proxy="$http_proxy" rsync_proxy="${PROXY}" _PROXY="$http_proxy" HTTP_PROXY="$http_proxy" HTTPS_PROXY="$http_proxy" FTP_PROXY="$http_proxy" RSYNC_PROXY="${PROXY}"; unset PROXY
fi