#!/usr/bin/sh
# for this to work you need to have the following installed:
# - Xcode: http://developer.apple.com/
# - git: http://help.github.com/mac-git-installation/
# - mercurial / hg: http://mercurial.berkwood.com/

# pull three20
cd ..
git clone git://github.com/facebook/three20.git 

# pull mailcore - new URL
git clone git://github.com/mronge/MailCore.git
cd mailcore
git submodule update --init
# TODO(gabor): Temporary fix - current version of MailCore doesn't work with reMail
# see https://groups.google.com/d/msg/remail-iphone/SmnEeX9N6As/f-2iYzvAiGcJ
git checkout 7c13b7b9518e0bc2cdd86e092245e0e05afa0239
cd -

# this should be it - you can now open the ReMailIPhone Xcode project
echo "Done - if you didn't see errors, you can now open the ReMailIPhone Xcode project"
