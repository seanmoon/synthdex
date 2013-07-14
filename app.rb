require 'cuba'

Cuba.define do
  on get do
    on root do
      res.status = 200
      res.write "Synthdex"
    end

    on default do
      res.status = 404
      res.write "404 Not Found"
    end
  end
end

