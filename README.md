

## Laravel 8 API Crud (Passport)

Laravel 8 API Crud is a basic RESTful API crud app built with Laravel 8 and Passport. In this project a rest api created for managing product crud operations. 

Features (API) include:

- Laravel passport package
- Authentication using passport
- Logout to remove old tokens 
- Create product.
- List products.
- Update product.
- Delete product


## Install

Install commands:
``` 
- git clone https://github.com/nhrrob/laravel-8-api-crud.git 
- composer update
- add .env and update database settings
- php artisan migrate:fresh --seed
- php artisan serve

```

Use Postman to test the API.

- POSTMAN : https://documenter.getpostman.com/view/21630263/UzXKWz5d

## Note

- Login: 
    - URL: http://laravel-8-api-crud.rob/api/login 
    - Method: POST
    - Insert email and password: Body tab => x-www-form-urlencode
    - Press Enter to get Bearer token;
    - For future request add this token: 
      <br>Authorization tab: Type => Bearer Token; Insert token.
    

- Demo User : 
<br> ``admin@admin.com/admin``

