use Rack::Static, 
  :urls => ["/stylesheets", "/images"],
  :root => "public"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=1' 
    },
    File.open('public/index.html', File::RDONLY)
    File.open('public/img/arco.jpg', File::RDONLY)
  ]
}