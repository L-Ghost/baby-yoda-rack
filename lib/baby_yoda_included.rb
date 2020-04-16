require 'nokogiri'

class BabyYodaIncluded
  def initialize(app)
    @app = app
  end

  attr_reader :baby_yoda_file

  def call(env)
    status, headers, body = @app.call(env)

    html = body.class == File ? body.read : body.first
    doc = Nokogiri::HTML::DocumentFragment.parse(html)
    if baby_yoda_present?
      doc.css('img').each do |img|
        img['src'] = baby_yoda_file
      end
    end

    [status, headers, [doc.to_html]]
  end

  private

  def baby_yoda_present?
    if File.exists?('public/images/middlewares/baby-yoda.jpg')
      @baby_yoda_file = 'images/middlewares/baby-yoda.jpg'
      true
    else
      false
    end
  end
end

