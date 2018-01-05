require_relative 'test_helper'

class RunTest < MiniTest::Test
  def setup
    @domain           = "mydog.io" # Must be available by DNS but not by Whois
    @available_domain = "thisoneisavailablefoshizzle.co.uk"
    @taken_domain     = "hello.com"
  end

  def test_check_taken
    assert "#{@taken_domain} is taken", `run check #{@taken_domain}`
  end

  def test_check_available
    assert "#{@available_domain} is available", `run check #{@available_domain}`
  end

  def test_check_probably_available
    assert "#{@domain} is probably available", `run check #{@domain}`
  end

  def test_ideas
    output = `run ideas "(good bad ugly)"`
    output = output.split("\n").sort.join(' ')
    assert_match "bad good ugly", output
  end

  def test_scout
    output = `run scout "(good bad)"`
    output = output.split("\n").sort.join(' ')
    assert_match "bad.com is taken good.com is taken", output
  end

end
