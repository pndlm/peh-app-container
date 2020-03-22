PEH_COMPOSER_ROOT="${PEH_COMPOSER_ROOT:-/app/www}"

# https://laravel.com/docs/5.8/deployment#optimization
composer -n -d"$PEH_COMPOSER_ROOT" dump-autoload -o
