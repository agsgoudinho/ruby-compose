# app = Proc.new do |env|
#   ['200',
#    {'Content-Type' => 'text/html'},
#    ["My rack hello world.\n"]
#   ]
# end
# run app

require_relative 'app'
run App
