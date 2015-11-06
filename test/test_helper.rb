require 'minitest/reporters'
require 'minitest/autorun'
require 'runfile'
include Runfile
load 'Runfile'

Minitest::Reporters.use!(Minitest::Reporters::SpecReporter.new)

