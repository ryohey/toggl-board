build:
	electron-packager ./ toggl-board --platform=all --arch=x64 --version=0.35.0 --overwrite
	zip -r toggl-board-darwin-x64.zip toggl-board-darwin-x64
	zip -r toggl-board-linux-x64.zip toggl-board-linux-x64
	zip -r toggl-board-win32-x64.zip toggl-board-win32-x64
	rm -rf toggl-board-darwin-x64
	rm -rf toggl-board-linux-x64
	rm -rf toggl-board-win32-x64
	
destribute:
	 @curl -O --user $(BINTRAY_AUTHORICATE) -T "toggl-board-darwin-x64.zip" -O  https://api.bintray.com/content/numa08/generic/toggl-board/$(VERSION)/toggl-board-darwin-x64.$(VERSION).zip?publish=1   
	 @curl -O --user $(BINTRAY_AUTHORICATE) -T "toggl-board-linux-x64.zip" -O  https://api.bintray.com/content/numa08/generic/toggl-board/$(VERSION)/toggl-board-linux-x64.$(VERSION).zip?publish=1
	 @curl -O --user $(BINTRAY_AUTHORICATE) -T "toggl-board-win32-x64.zip" -O  https://api.bintray.com/content/numa08/generic/toggl-board/$(VERSION)/toggl-board-win32-x64.$(VERSION).zip?publish=1