class CLI

  def initialize(file)
    @file = file
    if file.nil? || !File.exist?(file)
      @file = "webserver.log"
    end
  end
  
  def call 
    menu
    goodbye
  end
  
  def menu
    make_log_entries

    input = ""

    a = Artii::Base.new
    print a.asciify('server log analyzer').colorize(:blue)

    puts "\n\nHi! This is my solution to the test."

    until input == "exit"
      puts "\nTo see a list of webpages with most page views ordered from most pages views to less page views, enter " + "'most'".colorize(:blue) + "."
      puts "To see a list of webpages with most unique page views also ordered, enter " + "'unique'".colorize(:blue) + "."
      puts "To quit, type " + "'exit'".colorize(:blue) + "."
      puts "What would you like to do?"

      input = gets.chomp.downcase

      case input
      when "most"
        display_most_page_views
      when "unique"
        display_most_unique_page_views
      else
        puts "\nNot sure what you mean." unless input == "exit"
      end
    end
  end

  def make_log_entries
    if LogEntry.all.empty?
      log_entry_array = LogFile.log_entries(@file)
      LogEntry.create_from_collection(log_entry_array)
    end
  end

  def display_most_page_views
    puts "\nList of webpages with most page views: "

    text =""
    LogFile.entries_ordered_by_web_page.each do  |key,value| 
      text += "#{key} #{value} visits \n".colorize(:blue)
    end
    puts text
  end
  
  def display_most_unique_page_views
    puts "List of webpages with most unique page views: "
    
    text =""
    LogFile.unique_entries_ordered_by_web_page.each do  |key,value| 
      text += "#{key} #{value}  unique views\n".colorize(:blue)
    end
    puts text
  end

  def goodbye
    a = Artii::Base.new
    print a.asciify('Thanks').colorize(:blue)
  end
end
