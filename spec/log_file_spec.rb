require 'log_file'

describe LogFile do

  before (:each) do
    @path = File.dirname(__FILE__) + '/test_webserver.log'
  end

  describe 'log_entries' do
    it 'can create an array with data inside a hash for each log entry' do
      LogFile.log_entries(@path)
      expect(LogFile.log_entries(@path)).to eq([{:web_page => "/help_page/1", :ip_address => "126.318.035.038"},
                                                {:web_page => "/contact", :ip_address => "184.123.665.067"},
                                                {:web_page => "/home", :ip_address => "184.123.665.067"},
                                                {:web_page => "/about/2", :ip_address => "444.701.448.104"},
                                                {:web_page => "/help_page/1", :ip_address => "929.398.951.889"}
                                               ])     
    end
  end
end
