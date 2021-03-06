#require './lib/baby_yoda'
require './lib/baby_yoda_included'

# middlewares

use Rack::Static,
  urls: ['/images', '/js', '/css'],
  root: 'public'
# use BabyYoda
use BabyYodaIncluded

# run app

run lambda { |env|
  [
    200,
    {
      'Content-Type' => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}
