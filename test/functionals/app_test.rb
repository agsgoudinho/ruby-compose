require_relative '../test_helper'
require_relative '../../app'

class AppTest < Minitest::Test

  def app
    App
  end

  def test_get_home
    get '/'
    assert_equal 200, last_response.status
  end

  def test_get_frank_says
    get '/frank-says'
    assert_equal 200, last_response.status
  end

  def test_get_is_major
    get '/person/18/is_major'
    assert_equal 200, last_response.status
  end

  def test_get_centimeter_to_inch
    get '/metrics/linear/cm/1/in'
    assert_equal 200, last_response.status
  end

  def test_get_centimeter_to_foot
    get '/metrics/linear/cm/1/ft'
    assert_equal 200, last_response.status
  end

  def test_get_centimeter_to_meter
    get '/metrics/linear/cm/1/m'
    assert_equal 200, last_response.status
  end

  def test_get_centimeter_to_yard
    get '/metrics/linear/cm/1/yd'
    assert_equal 200, last_response.status
  end

  def test_get_centimeter_to_mile
    get '/metrics/linear/cm/1/ml'
    assert_equal 200, last_response.status
  end

  def test_get_inch_to_foot
    get '/metrics/linear/in/1/ft'
    assert_equal 200, last_response.status
  end

  def test_get_inch_to_meter
    get '/metrics/linear/in/1/m'
    assert_equal 200, last_response.status
  end

  def test_get_inch_to_yard
    get '/metrics/linear/in/1/yd'
    assert_equal 200, last_response.status
  end

  def test_get_inch_to_centimeter
    get '/metrics/linear/in/1/cm'
    assert_equal 200, last_response.status
  end

  def test_get_meter_to_foot
    get '/metrics/linear/m/1/ft'
    assert_equal 200, last_response.status
  end

  def test_get_meter_to_centimeter
    get '/metrics/linear/m/1/cm'
    assert_equal 200, last_response.status
  end

  def test_get_meter_to_yard
    get '/metrics/linear/m/1/yd'
    assert_equal 200, last_response.status
  end

  def test_get_meter_to_mile
    get '/metrics/linear/m/1/ml'
    assert_equal 200, last_response.status
  end

  def test_get_meter_to_inch
    get '/metrics/linear/m/1/in'
    assert_equal 200, last_response.status
  end

  def test_get_foot_to_meter
    get '/metrics/linear/ft/1/m'
    assert_equal 200, last_response.status
  end

  def test_get_foot_to_centimeter
    get '/metrics/linear/ft/1/cm'
    assert_equal 200, last_response.status
  end

  def test_get_foot_to_yard
    get '/metrics/linear/ft/1/yd'
    assert_equal 200, last_response.status
  end

  def test_get_foot_to_mile
    get '/metrics/linear/ft/1/ml'
    assert_equal 200, last_response.status
  end

  def test_get_foot_to_inch
    get '/metrics/linear/ft/1/in'
    assert_equal 200, last_response.status
  end

  def test_get_mile_to_foot
    get '/metrics/linear/ml/1/ft'
    assert_equal 200, last_response.status
  end

  def test_get_mile_to_meter
    get '/metrics/linear/ml/1/m'
    assert_equal 200, last_response.status
  end

  def test_get_mile_to_yard
    get '/metrics/linear/ml/1/yd'
    assert_equal 200, last_response.status
  end

  def test_get_mile_to_centimeter
    get '/metrics/linear/ml/1/cm'
    assert_equal 200, last_response.status
  end

  def test_get_yard_to_foot
    get '/metrics/linear/yd/1/ft'
    assert_equal 200, last_response.status
  end

  def test_get_yard_to_meter
    get '/metrics/linear/yd/1/m'
    assert_equal 200, last_response.status
  end

  def test_get_yard_to_mile
    get '/metrics/linear/yd/1/ml'
    assert_equal 200, last_response.status
  end

  def test_get_yard_to_inch
    get '/metrics/linear/yd/1/in'
    assert_equal 200, last_response.status
  end

  def test_get_yard_to_centimeter
    get '/metrics/linear/yd/1/cm'
    assert_equal 200, last_response.status
  end

  def test_get_fahrenheit_to_celsius
    get '/metrics/temperature/f/1/c'
    assert_equal 200, last_response.status
  end

  def test_get_kelvin_to_celsius
    get '/metrics/temperature/k/1/c'
    assert_equal 200, last_response.status
  end

  def test_get_celsius_to_kelvin
    get '/metrics/temperature/c/1/k'
    assert_equal 200, last_response.status
  end

  def test_get_fahrenheit_to_kelvin
    get '/metrics/temperature/f/1/k'
    assert_equal 200, last_response.status
  end

  def test_get_kelvin_to_fahrenheit
    get '/metrics/temperature/k/1/f'
    assert_equal 200, last_response.status
  end

  def test_get_celsius_to_fahrenheit
    get '/metrics/temperature/c/1/f'
    assert_equal 200, last_response.status
  end
end