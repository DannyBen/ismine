require 'minitest'
require 'minitest/reporters'
require 'minitest/autorun'
require 'runfile'
include Runfile::DSL
load 'Runfile'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
