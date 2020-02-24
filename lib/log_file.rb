class LogFile

  def self.log_entries(path)
    entries = []

    File.open(path).each do |entry_log|
        entry_data = {}
        web_page, ip_address = *entry_log.split(/\s+/)
        entry_data[:web_page] = web_page
        entry_data[:ip_address] = ip_address
        entries << entry_data
    end
    entries
  end

  def self.visits_by_web_page
    visits_by_web_page ||= LogEntry.all.group_by { |entry| entry.web_page }
  end

  def self.entries_ordered_by_web_page
    visits_by_web_page.map { |web_page, visits| [web_page, visits.count] }.
    sort { |a, b| b.last <=> a.last }
  end

  def self.unique_entries_ordered_by_web_page
    visits_by_web_page.map { |key, value| [key, value.map(&:ip_address).uniq.count] }.
    sort { |a, b| b.last <=> a.last }
  end
end
