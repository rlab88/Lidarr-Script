@echo off
Set "lidarrUrl=http://192.168.0.16:8686"
Set "lidarrApiKey=327462d1451a45a38d9f5e89cfdc84ab"


If %lidarr_eventtype%==Test Exit
	Else If %lidarr_eventtype%==AlbumDownload 
		curl -s "%lidarrUrl%/api/v1/album/monitor" --request PUT --header "X-Api-Key:"%lidarrApiKey% -H "Content-Type: application/json" --data-raw "{\"albumIds\":[\"%lidarr_album_id%\"], \"monitored\": false}"
Exit
