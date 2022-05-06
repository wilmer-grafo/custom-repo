composer create-project laravel/laravel=8.6.x
php artisan migrate
composer require laravel/jetstream
php artisan jetstream:install livewire
npm install && npm run dev
php artisan migrate
#copy content to resources\views\vendor\jetstream
php artisan vendor:publish --tag=jetstream-views
