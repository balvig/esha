RSpec.configure do |config|
  config.before(:all) do
    Esha::Api.key = 'au6mk7grt7cuu6umg48n5wmw' # Dummy key for running specs
  end
end
