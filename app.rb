require 'cuba'

Cuba.define do
  on default do
    res.status = 404
    res.write "404 Not Found"
  end
end
