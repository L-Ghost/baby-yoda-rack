
simple Rack Middleware experiment inspired by this old internet post
https://macournoyer.wordpress.com/2008/02/09/the-flexible-thin-anorexic-gymnast-that-democratized-deployment/
  
it replaces Star Wars characters images with the Baby Yoda image
  
## Setup
  
having the `rack gem` and a Ruby server installed, just go to the root directory and run  
  
```
$ bundle install  
$ rackup
```
  
comment the BabyYoda Middleware inclusion line in `config.ru` to see the other characters images
