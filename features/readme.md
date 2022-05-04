# Pre requisites

* [Android Studio](https://developer.android.com/studio)

* [VSCode](https://code.visualstudio.com/download)

* [Java SDK](https://www.oracle.com/technetwork/java/javase/downloads/jdk12-downloads-5295953.html)

## Homebrew
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
## Set environment variables:

Open file:
```
open ~/.bash_profile 
```
Paste code:
```
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8) # encontra a Home do Java 8 (1.8)
export ANDROID_HOME=~/Library/Android/sdk

PATH=$PATH:$ANDROID_HOME/platform-tools
PATH=$PATH:$ANDROID_HOME/tools
PATH=$PATH:$ANDROID_HOME/tools/bin
PATH=$PATH:$ANDROID_HOME/tools/lib
PATH=$PATH:$JAVA_HOME/bin
```

# To install Ruby
## For MacOS
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
ruby -v
gem install bundler
```
## For Windows
* [Ruby](https://rubyinstaller.org/downloads/)

# To install Node JS
```
brew install npm    # instalar o appium via (source) npm (Node JS Package Manager)
npm --version       # versão atual do npm
brew install node   # instalar o node
node --version      # versão atual do node
```

# To install Appium
## For MacOS,
```
$ brew install node
```
$ npm install -g appium

To start the appium server:
```
$ appium
```
## For Windows,

* [Node](https://nodejs.org/en/download/)

```
$ npm install -g appium
```
```
npm install -g appium-doctor --android
```
```
appium-doctor
```
To start the appium server:
```
$ appium
```
# Test Execution
To run the tests, execute the commands in the terminal:
```
bundle install
```
```
gem install cucumber
```
```
cucumber
```

# Feature Express
To install
```
$ npm install -g feature-express
```
To read all features files from directories and sub directories you'll can do
```
$ feature-express ./ pt 4444
```