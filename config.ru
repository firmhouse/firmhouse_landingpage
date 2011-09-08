use Rack::Static, 
  :urls => ["/stylesheets", "/img"],
  :root => "public"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=1' 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}