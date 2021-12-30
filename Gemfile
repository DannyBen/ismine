source "https://rubygems.org"

gem "runfile", require: false
gem "colsole"

gem "whois-parser"
gem "activesupport", "< 7"
# whois-parser breaks with activesupport 7
# can remove the activesupport gem when fixed
# ref: https://github.com/weppos/whois-parser/issues/141

gem "pretty_trace", require: 'pretty_trace/enable-trim'

group :development do 
  gem "byebug"
end

group :test do 
  gem 'rake', require: false
  gem 'minitest'
  gem 'minitest-reporters'
end