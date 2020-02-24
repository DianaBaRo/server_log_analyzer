require 'log_entry'

describe LogEntry do

  describe 'initialize' do
    it 'iterates over a log entry hash and add them to @@all array' do
      log_entry = LogEntry.new({:web_page => "/help_page/1", :ip_address => "126.318.035.038"})
      expect(log_entry.web_page).to eq('/help_page/1')
      expect(log_entry.ip_address).to eq('126.318.035.038')
    end
  end

  describe 'create_from_collection' do
    it 'iterates over a log entry array and creates a new LogEntry instance' do
      @log_entry_array = [{:web_page => "/help_page/1", :ip_address => "126.318.035.038"},
                        {:web_page => "/contact", :ip_address => "184.123.665.067"},
                        {:web_page => "/home", :ip_address => "184.123.665.067"},
                        {:web_page => "/about/2", :ip_address => "444.701.448.104"},
                        {:web_page => "/help_page/1", :ip_address => "929.398.951.889"}]

      LogEntry.create_from_collection(@log_entry_array)
      expect(LogEntry.all.length).to eq(6)
    end
  end
end
