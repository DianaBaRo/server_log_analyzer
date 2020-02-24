class LogEntry
  attr_accessor :web_page, :ip_address

  @@all = []

  def initialize(log_entry_hash)
    log_entry_hash.each {|k,v| self.send(("#{k}="),v)}
    @@all << self
  end

  def self.create_from_collection(log_entry_array)
    log_entry_array.each {|log_entry_hash| LogEntry.new(log_entry_hash)}
  end 

  def self.all
    @@all
  end
end
