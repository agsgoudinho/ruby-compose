require 'sinatra'
require 'json'
require_relative 'person/person'
require_relative 'metrics/linear'
require_relative 'metrics/tempeture'

class App < Sinatra::Base
  get '/' do
    "Hello, world! This is a app.\n"
  end

  get '/frank-says' do
    "Put this in your pipe & smoke it!\n"
  end

  get '/person/:age/is_major' do
    content_type :json
    age = params[:age].to_i
    person = Person.new('fake name', age)
    { age: age, is_major: person.is_major? }.to_json
  end

  get '/metrics/linear/:orig_type/:value/:dest_type' do
    content_type :json
    orig_type = params[:orig_type]
    value = params[:value]
    dest_type = params[:dest_type]
    linear = LinearMetric.new(value, orig_type)

    case dest_type
    when 'in'
      { orig_type: orig_type, dest_type: dest_type, value: linear.to_inch.to_f }.to_json
    when 'cm'
      { orig_type: orig_type, dest_type: dest_type, value: linear.to_centimeter.to_f }.to_json
    when 'ft'
      { orig_type: orig_type, dest_type: dest_type, value: linear.to_foot.to_f }.to_json
    when 'm'
      { orig_type: orig_type, dest_type: dest_type, value: linear.to_meter.to_f }.to_json
    when 'yd'
      { orig_type: orig_type, dest_type: dest_type, value: linear.to_yard.to_f }.to_json
    when 'ml'
      { orig_type: orig_type, dest_type: dest_type, value: linear.to_mile.to_f }.to_json
    end
  end

  get '/metrics/temperature/:orig_type/:value/:dest_type' do
    content_type :json
    orig_type = params[:orig_type]
    value = params[:value]
    dest_type = params[:dest_type]
    temperature = Temperature.new(value, orig_type)

    case dest_type
    when 'c'
      { orig_type: orig_type, dest_type: dest_type, value: temperature.to_celsius.to_f }.to_json
    when 'k'
      { orig_type: orig_type, dest_type: dest_type, value: temperature.to_kelvin.to_f }.to_json
    when 'f'
      { orig_type: orig_type, dest_type: dest_type, value: temperature.to_fahrenheit.to_f }.to_json
    end
  end
end