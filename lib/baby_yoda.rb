require 'nokogiri'

class BabyYoda
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)

    @doc = Nokogiri::HTML::DocumentFragment.parse(body.read)
    @doc.css("img").each do |img|
      img['src'] = 'images/baby-yoda.jpg'
    end

    response = Rack::Response.new
    response.write(@doc.to_html)
    response.finish
  end
end

