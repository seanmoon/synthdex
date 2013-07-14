class Patch
  class << self
    def find(name)
      new
    end
  end

  def name
    "PWM Strings"
  end
end


# HTTP

require 'cuba'
require 'cuba/render'

Cuba.use Rack::Static,
  root: "public",
  urls: ["/favicon.ico", "/style.css"]

Cuba.plugin Cuba::Render

Cuba.define do
  on get do
    on root do
      res.status = 200
      res.write "Synthdex"
    end

    on 'p/:name' do |name|
      res.status = 200
      patch = Patch.find(name)
      res.write render('views/patch.html.erb', patch: patch)
    end

    on 'patch/:name' do |name|
      res.redirect "/p/#{name}"
    end

    on default do
      res.status = 404
      res.write "404 Not Found"
    end
  end
end

