# PUPget

Downloader / web scraper for ps3 update software (UPDATE.PUP).


------------
# Description: 

PUPget is a very simple python script to download the absolute latest update software for PS3. The problem is that the PS3 Update software file host: https://dus01.ps3.update.playstation.net uses a locked down file structure for serving UPDATE.PUP files. This file host also associates unique hash values to each new release of the PS3 Update software and appends them to the file structure making traditional web scraping complex. This script circumvents this issue by scraping the host page directly.



