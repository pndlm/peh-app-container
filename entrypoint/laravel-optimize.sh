PEH_LARAVEL_ROOT="${PEH_LARAVEL_ROOT:-/app/www}"

# https://laravel.com/docs/5.8/deployment#optimization
php "$PEH_LARAVEL_ROOT/artisan" config:cache
php "$PEH_LARAVEL_ROOT/artisan" route:cache
