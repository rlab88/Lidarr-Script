@echo off
Set "lidarrUrl=INSERTURL:PORTHERE"
Set "lidarrApiKey=INSERTYOURAPIKEY"


If %lidarr_eventtype%==Test Exit
	Else If %lidarr_eventtype%==AlbumDownload 
		curl -s "%lidarrUrl%/api/v1/album/monitor" --request PUT --header "X-Api-Key:"%lidarrApiKey% -H "Content-Type: application/json" --data-raw "{\"albumIds\":[\"%lidarr_album_id%\"], \"monitored\": false}"
Exit
