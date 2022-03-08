#!/bin/bash
cd "$(dirname "${BASH_SOURCE[0]}")"
# oauth2-azure, it uses oauth2-client which is a generic library
# for oauth2 flow. oauth2-azure is just a provider on top of thephpleague/oauth2-client
# There are a lot of existing providers for us to use:
# Official providers: https://oauth2-client.thephpleague.com/providers/league/
# Thirdparty providers: https://oauth2-client.thephpleague.com/providers/thirdparty/
curl -sS https://getcomposer.org/installer | php # install composer
composer='php composer.phar' # composer command that we will use
$composer update
