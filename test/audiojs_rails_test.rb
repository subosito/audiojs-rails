require 'test_helper'

class AudiojsRailsTest < ActionDispatch::IntegrationTest
  teardown { clean_cache }

  test "engine is loaded" do
    assert_equal ::Rails::Engine, Audiojs::Rails::Engine.superclass
  end

  test "javascript is served" do
    get "/assets/audiojs.js"
    assert_response :success
  end

  test "image is served" do
    get "/assets/audiojs-player-graphics.gif"
    assert_response :success
  end

  test "flash is served" do
    get "/assets/audiojs.swf"
    assert_response :success
  end

  test "javascript contain references to graphics (image and flash)" do
    get "/assets/audiojs.js"
    assert_match "/assets/audiojs.swf", response.body
    assert_match "/assets/audiojs-player-graphics.gif", response.body
  end

  private
  def clean_cache
    FileUtils.rm_rf File.expand_path("../dummy/tmp",  __FILE__)
  end
end
