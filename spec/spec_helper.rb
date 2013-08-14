require 'vcr'
require 'rspec'

RSpec.configure do |c|
    c.extend VCR::RSpec::Macros
end

VCR.configure do |c|
  c.hook_into :webmock
  c.cassette_library_dir = 'spec/cassettes'
  c.filter_sensitive_data('<GREETING>') { 'Hello' }
  c.filter_sensitive_data('<LOCATION>') { 'World' }
  c.configure_rspec_metadata!
end