
simple Rack Middleware experiment inspired by this old internet post
https://macournoyer.wordpress.com/2008/02/09/the-flexible-thin-anorexic-gymnast-that-democratized-deployment/
  
it replaces images with the Baby Yoda image
  
## Setup
  
having the `rack gem` and a Ruby server installed, just go to the root directory and run  
  
```
$ bundle install  
$ rackup
```

### BabyYoda
  
this middleware will simply replace all images with the default Baby Yoda image  
  
### BabyYodaIncluded  
  
this middleware will replace your images with Baby Yoda if it finds a image file name as baby-yoda in the `public/images/middlewares` folder
