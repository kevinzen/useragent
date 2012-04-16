require 'user_agent'

FIREFOX_FIXTURES = [
  {
    raw: 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13',
    browser: 'Firefox',
    gecko_version: '20101203',
    os: 'Intel Mac OS X 10.6',
    platform: 'Macintosh',
    version: '3.6.13',
    localization: 'en-US'
  },
  {
    raw: 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:2.0b8) Gecko/20100101 Firefox/4.0b8',
    browser: 'Firefox',
    gecko_version: '20100101',
    os: 'Intel Mac OS X 10.6',
    platform: 'Macintosh',
    version: '4.0b8',
    localization: nil
  },
  {
    raw:  'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13',
    browser: 'Firefox',
    gecko_version: '20101203',
    os: 'Intel Mac OS X 10.6',
    platform: 'Macintosh',
    version: '3.6.13',
    localization: 'en-US'
  },
  {
    raw:  "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.1) Gecko/2008070206 Firefox/3.0.1",
    browser: 'Firefox',
    gecko_version: '2008070206',
    os: 'Linux i686',
    platform: 'X11',
    version: '3.0.1',
    localization: 'en-US'
  },
  {
    raw:  "Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en-US; rv:1.8.1.14) Gecko/20080404 Firefox/2.0.0.14",
    browser: 'Firefox',
    gecko_version: '20080404',
    os: 'Intel Mac OS X',
    platform: 'Macintosh',
    version: '2.0.0.14',
    localization: 'en-US'
  },
  {
    raw:  "Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.8.0.12) Gecko/20070508 Firefox/1.5.0.12",
    browser: 'Firefox',
    gecko_version: '20070508',
    os: 'PPC Mac OS X Mach-O',
    platform: 'Macintosh',
    version: '1.5.0.12',
    localization: 'en-US'
  },
  {
    raw:  "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.0.12) Gecko/20070508 Firefox/1.5.0.12",
    browser: 'Firefox',
    gecko_version: '20070508',
    os: 'Windows XP',
    platform: 'Windows',
    version: '1.5.0.12',
    localization: 'en-US'
  },
  {
    raw:  "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.4) Gecko/20060612 Firefox/1.5.0.4 Flock/0.7.0.17.1",
    browser: 'Firefox',
    gecko_version: '20060612',
    os: 'Linux i686',
    platform: 'X11',
    version: '1.5.0.4',
    localization: 'en-US'
  },
  {
    raw:  "Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en; rv:1.8.1.14) Gecko/20080409 Camino/1.6 (like Firefox/2.0.0.14)",
    browser: 'Camino',
    gecko_version: '20080409',
    os: 'Intel Mac OS X',
    platform: 'Macintosh',
    version: '1.6',
    localization: 'en'
  },
  {
    raw:  "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1) Gecko/20061024 Iceweasel/2.0 (Debian-2.0+dfsg-1)",
    browser: 'Iceweasel',
    gecko_version: '20061024',
    os: 'Linux i686',
    platform: 'X11',
    version: '2.0',
    localization: 'en-US'
  },
  {
    raw:  'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.1.4) Gecko/20091017 SeaMonkey/2.0',
    browser: 'Seamonkey',
    gecko_version: '20091017',
    os: 'Intel Mac OS X 10.6',
    platform: 'Macintosh',
    version: '2.0',
    localization: 'en-US'
  }
]



describe 'self.parse' do
  FIREFOX_FIXTURES.each do |fixture|
    context "given #{fixture}" do
      before do
        @user_agent = UserAgent.parse(fixture[:raw])
      end

      it 'is not mobile' do
        @user_agent.should_not be_mobile
      end

      it 'is not Webkit' do
        @user_agent.should_not be_webkit
      end

      it 'sets browser to Firefox' do
        @user_agent.browser.should == fixture[:browser]
      end

      it 'sets correct gecko version' do
        @user_agent.gecko.version.should == fixture[:gecko_version]
      end

      it 'sets correct operating system' do
        @user_agent.os.should == fixture[:os]
      end

      it 'sets correct platform' do
        @user_agent.platform.should == fixture[:platform]
      end

      it 'sets correct version' do
        @user_agent.version.should == fixture[:version]
      end

      it 'sets localization to nil' do
        @user_agent.localization.should == fixture[:localization]
      end

      it 'sets security to strong' do
        @user_agent.security.should == :strong
      end
    end
  end
end

