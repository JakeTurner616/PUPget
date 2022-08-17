# PUPget.sh
Downloader / web scraper for ps3 update software (UPDATE.PUP).


------------
# Description: 

PUPget.sh is a very simple bash script to download the absolute latest update software for PS3. The problem is that the PS3 Update software file host: https://dus01.ps3.update.playstation.net uses a locked down file structure for serving UPDATE.PUP files. This file host also associates unique hash values to each new release of the PS3 Update software and appends them to the file structure making traditional web scraping complex. This script circumvents this issue by scraping the host page directly: https://www.playstation.com/en-us/support/hardware/ps3/system-software/ to search for the file host's link via this page's source. The env variable "PUPURL" is to be passed and downloaded with wget using a link that is certain to be updated.

# Why: 

I wanted to run a mirror of emulation files including BIOS and ROM files for the PS3 without having to manually update the UPDATE.PUP files when they get out of date. This script allows me to automate their download to my file backend as to host an up to date mirror with a set frequency to pull and push an update. This could be useful to anyone else wanting to download UPDATE.PUP files on the command line.

------------

