require 'cuba'

Cuba.define do
  on default do
    res.status = 404
    res.write "404 Not Found"
  end

  on get do
    on root do
      res.status = 200
      res.write "Synthdex"
    end
  end
end

