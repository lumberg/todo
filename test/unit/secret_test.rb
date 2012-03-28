require 'test_helper'

class SecretTest < ActiveSupport::TestCase
  test "private data" do
    path = File.join(File.dirname(__FILE__), '../..', 'data', 'secret.dat')
    path = File.expand_path(path)
    data = File.read(path)
    assert data == "secret data\n"
  end
end
