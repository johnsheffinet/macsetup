#install homebrew, which requires xcode
xcode-select --install && usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#download cisco anyconnect
curl -Lo Downloads/anyconnect-macos-4.5.01044.dmg http://www.rushing.net/download/anyconnect-macos-4.5.01044.dmg?attredirects=0&d=1

#download cisco webex chrome extension
curl -Lo Downloads/ curl -Lo Downloads/Cisco-WebEx-Extension_crx.zip http://www.cisco.com/c/dam/en/us/td/docs/collaboration/webex_centers/esp/Cisco-WebEx-Extension_crx.zip && unzip Cisco-WebEx-Extension_crx.zip

#install docker
brew cask install docker

#install git
brew install git

#install google chrome
brew cask install google-chrome

#install google video and voice plugin
brew cask install google-hangouts

#install microsoft office
brew cask install microsoft-office

#install microsoft onedrive
brew cask install onedrive

#download microsoft teams
brew cask install microsoft-teams
#wget https://statics.teams.microsoft.com/production-osx/1.1.00.11551/Teams_osx.dmg && mv Teams_osx.dmg Downloads/Teams_osx.dmg

#install java 8
brew cask install adoptopenjdk

#install slack
brew cask install slack

#install visual studio code
brew cask install visual-studio-code

#install vmware horizon client
brew cask install vmware-horizon-client

#install xerox print driver
brew cask install xerox-print-driver

#install zoom
brew cask install zoomus

#set hostname
cat << EOF
* Set Hostname to M46069JSHEFFIE
** Open System Preferences => Sharing
** Edit Computer Name
** Set Local Hostname = M46069JSHEFFIE
** OK
** Close System Preferences
EOF

#set certificate authority
cat << EOF
* Set Certificate Authority
** Open Cisco Anyconnect
** Connect to remoteaccess.premierinc.com

** Open Keychain Access
** Keychain Access => Certificate Assistant => Request a Certificate From a Certificate Authority
** Set User Email Address = jsheffie
** Set Common Name = jsheffie
** Select Saved to disk
** Click Done

** Open Finder
** Open Downloads/ CertificateSigningRequest.certSigningRequest with TextEdit
** Copy all contents
** Close TextEdit
** Close Finder

** Open Safari
** Goto https://crl.premierinc.com/certsrv/certrqxt.asp
** Paste into Base-64-encoded certificate request (CMC or PKCS #10 or PKCS #7)
** Set Certificate Template = Mac AW - SHA2
** Click Submit
** Select Base 64 encoded
** #Download certificate
** Download certificate chain
** Close Safari

** #Keychain Access => File => Import items => Downloads/certnew.cer
** Keychain Access => File => Import items => Downloads/certnew.p7b
** Keychain Access => File => Import items => One Drive - Premier, Inc/Mac Setup/Premier*
** #Keychain Access => File => Import items => One Drive - Premier, Inc/Mac Setup/PremierProxyCA
** #Keychain Access => File => Import items => One Drive - Premier, Inc/Mac Setup/PremierCA
** Close Keychain Access
EOF
