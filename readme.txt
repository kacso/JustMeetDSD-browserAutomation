INSTALL ENVIRONMENT:
Install Ruby from http://dl.bintray.com/oneclick/rubyinstaller/rubyinstaller-2.0.0-p598-x64.exe?direct
In installer leave all default except for check boxes. Check second and third.

Install ruby gem certificate:
Download (right click -> Save As -> save as .pem) https://raw.githubusercontent.com/rubygems/rubygems/master/lib/rubygems/ssl_certs/AddTrustExternalCARoot-2048.pem

In console navigate to ruby installation folder and run:
	gem which rubygems
Copy .pem file to folder {ruby installation path}\lib\ruby\2.0.0\rubygems\ssl_certs

Install Ruby dev kit for building native libraries.
http://cdn.rubyinstaller.org/archives/devkits/DevKit-mingw64-64-4.7.2-20130224-1432-sfx.exe
Extract it to some folder.
cd (in console) to that folder.
ruby dk.rb init
ruby dk.rb install
To test the dev lit installation:
gem install json --platform=ruby
should successfully finish.

cd to JustMeetDSD-browserAutomation
gem install bundle
bundle install


gherkin error:
C:\Ruby200-x64\lib\ruby\gems\2.0.0\gems\gherkin-2.12.2\lib\gherkin\c_lexer.rb
Comment out line 7 using #
Add following line:
prefix = ''

chrome webdriver
http://chromedriver.storage.googleapis.com/index.html
ie webdriver
http://selenium-release.storage.googleapis.com/2.44/IEDriverServer_x64_2.44.0.zip
phantomjs
https://bitbucket.org/ariya/phantomjs/downloads/

Extract all three to c:\webdrivers
Add c:\webdrivers to username PATH environment variable.

For coloured console output install:
https://github.com/adoxa/ansicon/downloads
extract it
cd x64 or x86, depending on your windows architecture.
run .\ansicon.exe -i

ie settings
Enable Protected Mode must be set to the same value (enabled or disabled) for all zones.

RUN TEST:
start test: u shell-u -> cucumber.bat .\features\{featureName}.feature{:scenario_starting_line} -f html -o reports\{reportName}.html

:scenario_starting_line is optional paramater, use this if you want to run only one scenario.
For running ALL tests run runAll.bat


FEATURE NAME INSTRUCTIONS:
Use format xxx_testName.feature, where xxx is ordinal number of test (using in runAll.bat)

GIT ACTIONS:
GIT - eForge Process: Application environment variables. 
      For the first time:

      In config folder, create secretapplication.yml file with following content:

      USERNAME: justmeet_username
      PASSWORD: justmeet_password
      
      In root folder create "reports" folder
      
      Commands: git status -> za vidjeti status fajlova
                git config --global user.name "Your Name"   -> u Your name upiši npr.eberbun
                git config --global user.email you@example.com -> ovdje svoj ericssonov email
                git add .  -> za pripremu fajlova za dodati
                git commit -m "first commit"  -> first commit je komentar što dodaješ na eforge
                git push origin master -> naredba za dodavanje u eforge
                git pull -> naredba za skidanje sa eforge sebi lokalno


Documentation
http://www.rubydoc.info/github/cheezy/page-object/PageObject/Accessors


DRIVER/BROWSER UPDATE:				
Update web driver:
bundle install
bundle update

For testing use major version Mozilla firefox (version that one behind actual) and disable automatic update
	Download link for Mozilla firefox 35: http://www.softexia.com/internet-tools/browsing/firefox-35/
Once a week do update of web drivers
