PEH_LARAVEL_ROOT="${PEH_LARAVEL_ROOT:-/app/www}"

# make sure Laravel can write to the appropriate locations
mkdir -p "$PEH_LARAVEL_ROOT/bootstrap/cache"
touch "$PEH_LARAVEL_ROOT/storage/logs/laravel.log"
chown -R www-data:www-data "$PEH_LARAVEL_ROOT/storage" "$PEH_LARAVEL_ROOT/bootstrap/cache" || true

# and Composer
mkdir -p "$PEH_LARAVEL_ROOT/vendor"
chown appuser:appuser "$PEH_LARAVEL_ROOT/vendor" "$PEH_LARAVEL_ROOT/composer.*" || true
