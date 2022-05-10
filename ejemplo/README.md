composer create-project laravel/laravel=8.6.x
php artisan migrate
composer require laravel/jetstream
php artisan jetstream:install livewire
npm install && npm run dev
php artisan migrate
#copy content to resources\views\vendor\jetstream
php artisan vendor:publish --tag=jetstream-views
#
https://tailwindcss.com/docs/customizing-colors
php artisan migrate:fresh
#run de seed
php artisan db:seed
#create
php artisan make:seeder AdminSeeder
#fresh and seed
php artisan migrate:fresh --seed
List all facades in config\app.php 'aliases' => [
#middleware
php artisan make:middleware EnsureUserIsAdmin
Registrar el middleware en: app\Http\Kernel.php
php artisan make:controller AdminController
Habilitar emailVerification en config\fortify.php
Implementar la interfaz MustVerifyEmail en el modelo usuario
#list to publish
php artisan vendor:publish --tag=laravel-notifications
php artisan vendor:publish --tag=laravel-mail
php artisan vendor:publish
26; enter and modify colors button, mail folder
php artisan vendor:publish
27; enter and modify colors button; notifications folder, modificar la apariencia
En \app\Providers\AuthServiceProvider.php; para el email personalizado
