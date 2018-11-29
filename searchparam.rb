# Additional search parameter Module

module Searchparam
  def Searchparam.extra()
    puts "This is the Searchparam module - feature 'extra' has been called. "
  end
  # file processing logic
  parameter = false
  # new feature - displaying the number of results matched!
  total_results = 0


  File.open(baselog, 'r') do |file| # variable obtained via $stdin
    file.readlines.each do |line|

  # need to beef up the regex, future editions need the ability to search special characters
      if parameter == true && (line.match(//) || line.strip.empty?) # /i/ case insensitive
        parameter = false
      end

      parameter = true if line.match(search) # Now you can search for a particular date in the string. - Or hell, whatever you want!
  # if the above condition is met, process these next 2 lines of code
  # console output silenced by commenting line below
      #puts line if parameter == true
      # from here i can include conditionals based on the log's results.
  # this line will write the matching data contained in the search variable into the file specified in the target variable
      target.write(line) if parameter == true
  # record counter toggles with each condition met.
      total_results += 1 if parameter == true
    end

  end

  # Just a variable to prepare
  SEARCHLIMITER = "SEARCHLIMITER Variable (from searchparam.rb Module)- Loads successfully"
end
