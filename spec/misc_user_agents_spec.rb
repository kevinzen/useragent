require 'user_agent'

describe "When Viewing" do

  describe "Misc Firefox User Agents" do
    
    # Firefox versions
    it "it can determine if Firefox/4.0 is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (Windows; U; Windows NT 6.1; ru; rv:1.9.2.3) Gecko/20100401 Firefox/4.0 (.NET CLR 3.5.30729)")
      ua.version.should eq  UserAgent::Version.new("4.0")
      ua.browser.should eq "Firefox"
    end
    it "it can determine if Firefox/3.8 is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.2) Gecko/2008092313 Ubuntu/9.25 (jaunty) Firefox/3.8")
      ua.version.should eq  UserAgent::Version.new("3.8")
      ua.browser.should eq "Firefox"
    end
    it "it can determine if Firefox/3.6b5 is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2b5) Gecko/20091204 Firefox/3.6b5")
      ua.version.should eq  UserAgent::Version.new("3.6b5")
      ua.browser.should eq "Firefox"
    end
    it "it can determine if Firefox/3.6.8 is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (Windows; U; Windows NT 6.1; it; rv:1.9.2.8) Gecko/20100722 AskTbADAP/3.9.1.14019 Firefox/3.6.8")
      ua.version.should eq  UserAgent::Version.new("3.6.8")
      ua.browser.should eq "Firefox"
    end
    it "it can determine if Firefox/3.6b5 is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (Windows; U; Windows NT 6.1; ru; rv:1.9.2b5) Gecko/20091204 Firefox/3.6b5")
      ua.version.should eq  UserAgent::Version.new("3.6b5")
      ua.browser.should eq "Firefox"
    end
    it "it can determine if Firefox/3.6.6 is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.6) Gecko/20100628 Ubuntu/10.04 (lucid) Firefox/3.6.6")
      ua.version.should eq  UserAgent::Version.new("3.6.6")
      ua.browser.should eq "Firefox"
    end
    it "it can determine if Firefox/3.1b1 is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (Windows; U; Windows NT 6.0; fr; rv:1.9.1b1) Gecko/20081007 Firefox/3.1b1")
      ua.version.should eq  UserAgent::Version.new("3.1b1")
      ua.browser.should eq "Firefox"
    end
    it "it can determine if Firefox/3.5 is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (X11;U; Linux i686; en-GB; rv:1.9.1) Gecko/20090624 Ubuntu/9.04 (jaunty) Firefox/3.5")
      ua.version.should eq  UserAgent::Version.new("3.5")
      ua.browser.should eq "Firefox"
    end
    it "it can determine if Firefox/14.0a1 is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:14.0) Gecko/20120405 Firefox/14.0a1")
      ua.version.should eq  UserAgent::Version.new("14.0a1")
      ua.browser.should eq "Firefox"
    end
    it "it can determine if Firefox/4.2a1pre is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (X11; Linux x86_64; rv:2.2a1pre) Gecko/20100101 Firefox/4.2a1pre")
      ua.version.should eq  UserAgent::Version.new("4.2a1pre")
      ua.browser.should eq "Firefox"
    end
    it "it can determine if Firefox/10.0a4 is supported" do
      ua = UserAgent.parse("Mozilla/6.0 (Macintosh; I; Intel Mac OS X 11_7_9; de-LI; rv:1.9b4) Gecko/2012010317 Firefox/10.0a4")
      ua.version.should eq  UserAgent::Version.new("10.0a4")
      ua.browser.should eq "Firefox"
    end
    it "it can determine if Firefox/6.0 is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (X11; Linux i686; rv:6.0) Gecko/20100101 Firefox/6.0")
      ua.version.should eq  UserAgent::Version.new("6.0")
      ua.browser.should eq "Firefox"
    end
    it "it can determine if Firefox/11.0 is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko Firefox/11.0")
      ua.version.should eq  UserAgent::Version.new("11.0")
      ua.browser.should eq "Firefox"
    end
    it "it can determine if Firefox/10.0a4 is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (Macintosh; I; Intel Mac OS X 11_7_9; de-LI; rv:1.9b4) Gecko/2012010317 Firefox/10.0a4")
      ua.version.should eq  UserAgent::Version.new("10.0a4")
      ua.browser.should eq "Firefox"
    end
    it "it can determine if Firefox/9.0.1 is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (Windows NT 6.2; rv:9.0.1) Gecko/20100101 Firefox/9.0.1")
      ua.version.should eq  UserAgent::Version.new("9.0.1")
      ua.browser.should eq "Firefox"
    end
    it "it can determine if Firefox/4.0b6pre is supported" do
      # TODO there's a bug in the useragent gem that causes this to fail
      ua = UserAgent.parse("Mozilla/5.0 (Windows NT 6.1; WOW64; rv:2.0b6pre) Gecko/20100903 Firefox/4.0b6pre")
      ua.version.should eq  UserAgent::Version.new("4.0b6pre")
      ua.browser.should eq "Firefox"
    end

  end
  describe "Misc MSIE User Agents" do

    # IE versions
    it "it can determine if MSIE 5.50 is supported" do
      ua = UserAgent.parse("Mozilla/4.0 (compatible; MSIE 5.50; Windows NT; SiteKiosk 4.9; SiteCoach 1.0)")
      ua.version.should eq  UserAgent::Version.new("5.50")
      ua.browser.should eq "Internet Explorer"
    end
    it "it can determine if MSIE 5.50 is supported" do
      ua = UserAgent.parse("Mozilla/4.0 (compatible; MSIE 5.50; Windows NT; SiteKiosk 4.8; SiteCoach 1.0)")
      ua.version.should eq  UserAgent::Version.new("5.50")
      ua.browser.should eq "Internet Explorer"
    end
    it "it can determine if MSIE 5.5 is supported" do
      ua = UserAgent.parse("Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 6.1; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E)")
      ua.version.should eq  UserAgent::Version.new("5.5")
      ua.browser.should eq "Internet Explorer"
    end
    it "it can determine if MSIE 5.5 is supported" do
      ua = UserAgent.parse("Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 6.1; chromeframe/12.0.742.100; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C)")
      ua.version.should eq  UserAgent::Version.new("5.5")
      ua.browser.should eq "Internet Explorer"
    end
    it "it can determine if MSIE 5.22 is supported" do
      ua = UserAgent.parse("Mozilla/4.0 (compatible; MSIE 5.22; Mac_PowerPC)")
      ua.version.should eq  UserAgent::Version.new("5.22")
      ua.browser.should eq "Internet Explorer"
    end
    it "it can determine if MSIE 5.01 is supported" do
      ua = UserAgent.parse("Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0; Wanadoo 5.6)")
      ua.version.should eq  UserAgent::Version.new("5.01")
      ua.browser.should eq "Internet Explorer"
    end
    it "it can determine if MSIE 7.0 is supported" do
      ua = UserAgent.parse("Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0)")
      ua.version.should eq  UserAgent::Version.new("7.0")
      ua.browser.should eq "Internet Explorer"
    end
    it "it can determine if MSIE 7.0 is supported" do
      ua = UserAgent.parse("Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; SLCC2; .NET CLR 2.0.50727; InfoPath.3; .NET4.0C; .NET4.0E; .NET CLR 3.5.30729; .NET CLR 3.0.30729; MS-RTC LM 8)")
      ua.version.should eq  UserAgent::Version.new("7.0")
      ua.browser.should eq "Internet Explorer"
    end
    it "it can determine if MSIE 7.0 is supported" do
      ua = UserAgent.parse("Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; MS-RTC LM 8; .NET4.0C; .NET4.0E; InfoPath.3)")
      ua.version.should eq  UserAgent::Version.new("7.0")
      ua.browser.should eq "Internet Explorer"
    end
    it "it can determine if MSIE 7.0b is supported" do
      ua = UserAgent.parse("Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 6.0)")
      ua.version.should eq  UserAgent::Version.new("7.0b")
      ua.browser.should eq "Internet Explorer"
    end
    it "it can determine if MSIE 8.0 is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/4.0; Media Center PC 4.0; SLCC1; .NET CLR 3.0.04320)")
      ua.version.should eq  UserAgent::Version.new("8.0")
      ua.browser.should eq "Internet Explorer"
    end
    it "it can determine if MSIE 8.0 is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; SLCC1; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET CLR 1.1.4322)")
      ua.version.should eq  UserAgent::Version.new("8.0")
      ua.browser.should eq "Internet Explorer"
    end
    it "it can determine if MSIE 8.0 is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2; SLCC1; .NET CLR 3.0.4506.2152; .NET CLRMozilla/5.0 (compatible; MSIE 10.6; Windows NT 6.1; Trident/5.0; InfoPath.2; SLCC1; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET CLR 2.0.50727) 3gpp-gba UNTRUSTED/1.0")
      ua.version.should eq  UserAgent::Version.new("8.0")
      ua.browser.should eq "Internet Explorer"
    end
    it "it can determine if MSIE 10.0 is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/4.0; InfoPath.2; SV1; .NET CLR 2.0.50727; WOW64)")
      ua.version.should eq  UserAgent::Version.new("10.0")
      ua.browser.should eq "Internet Explorer"
    end
    it "it can determine if MSIE 10.0 is supported" do
      ua = UserAgent.parse("Mozilla/4.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0)")
      ua.version.should eq  UserAgent::Version.new("10.0")
      ua.browser.should eq "Internet Explorer"
    end
    it "it can determine if MSIE 9.0 is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 7.1; Trident/5.0)")
      ua.version.should eq  UserAgent::Version.new("9.0")
      ua.browser.should eq "Internet Explorer"
    end
    it "it can determine if MSIE 9.0 is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; Media Center PC 6.0; InfoPath.3; MS-RTC LM 8; Zune 4.7)")
      ua.version.should eq  UserAgent::Version.new("9.0")
      ua.browser.should eq "Internet Explorer"
    end

  end
  
  # Test that chrome is supported
  describe "Misc chrome User Agents" do

    it "it can determine if chrome is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.6 (KHTML, like Gecko) Chrome/20.0.1092.0 Safari/536.6")
      ua.version.should eq  UserAgent::Version.new("20.0.1092.0")
      ua.browser.should eq "Chrome"
    end
    it "it can determine if chrome is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.22 (KHTML, like Gecko) Chrome/19.0.1047.0 Safari/535.22")
      ua.version.should eq  UserAgent::Version.new("19.0.1047.0")
      ua.browser.should eq "Chrome"
    end
    it "it can determine if chrome is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (Windows NT 6.0; WOW64) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.45 Safari/535.19")
      ua.version.should eq  UserAgent::Version.new("18.0.1025.45")
      ua.browser.should eq "Chrome"
    end
    it "it can determine if chrome is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.134 Safari/534.16")
      ua.version.should eq  UserAgent::Version.new("10.0.648.134")
      ua.browser.should eq "Chrome"
    end
    it "it can determine if chrome is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.213.1 Safari/532.1")
      ua.version.should eq  UserAgent::Version.new("4.0.213.1")
      ua.browser.should eq "Chrome"
    end

  end
  
  # Test that safari is supported
  describe "Misc safari User Agents" do
    
    it "it can determine if safaris supported" do
      ua = UserAgent.parse("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/534.55.3 (KHTML, like Gecko) Version/5.1.3 Safari/534.53.10")
      ua.version.should eq  UserAgent::Version.new("5.1.3")
      ua.browser.should eq "Safari"
    end
    it "it can determine if safari is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (Windows; U; Windows NT 6.1; cs-CZ) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27")
      ua.version.should eq  UserAgent::Version.new("5.0.4")
      ua.browser.should eq "Safari"
    end
    it "it can determine if safari is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (Windows; U; Windows NT 5.1; it-IT) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.3 Safari/533.19.4")
      ua.version.should eq  UserAgent::Version.new("5.0.3")
      ua.browser.should eq "Safari"
    end
    it "it can determine if safari is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; de-de) AppleWebKit/534.15+ (KHTML, like Gecko) Version/5.0.3 Safari/533.19.4")
      ua.version.should eq  UserAgent::Version.new("5.0.3")
      ua.browser.should eq "Safari"
    end
    it "it can determine if safari is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; zh-cn) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16")
      ua.version.should eq  UserAgent::Version.new("5.0")
      ua.browser.should eq "Safari"
    end
    it "it can determine if safari is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_4_11; de-de) AppleWebKit/533.16 (KHTML, like Gecko) Version/4.1 Safari/533.16")
      ua.version.should eq  UserAgent::Version.new("4.1")
      ua.browser.should eq "Safari"
    end
    it "it can determine if safari is supported" do
      ua = UserAgent.parse("Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_2; ru-ru) AppleWebKit/533.2+ (KHTML, like Gecko) Version/4.0.4 Safari/531.21.10")
      ua.version.should eq  UserAgent::Version.new("4.0.4")
      ua.browser.should eq "Safari"
    end


  end

end
