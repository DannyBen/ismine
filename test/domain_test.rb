require_relative 'test_helper'

class DomainTest < MiniTest::Test
  def setup
    @domain           = "mydog.io" # Must be available by DNS but not by Whois
    @available_domain = "thisoneisavailablefoshizzle.co.uk"
    @taken_domain     = "hello.com"
  end

  def test_available
    assert available? @domain
    refute available? @domain, true
  end

  def test_dns
    assert dns_available? @available_domain
    refute dns_available? @taken_domain
  end

  def test_whois
    assert whois_available? @available_domain
    refute whois_available? @taken_domain
  end


end