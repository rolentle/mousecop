require 'test_helper'
class ClientTest < Minitest::Test
  def test_client_exists
    assert Mousecop::Client.new
  end
end
