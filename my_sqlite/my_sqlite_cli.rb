require 'readline'
require './my_sqlite_request.rb'

puts "MySqlite version 0.1 #{Time.now.strftime("%Y-%m-%d")}"

request = MySqliteRequest.new

while input = Readline.readline('my_sqlite_cli> ', true)
  words = input.split

  case words[0]
  when 'SELECT'
    request.from(words[2]) if words[1] == 'FROM'
    results = request.run
    puts results.map(&:to_s).join("\n")

  when 'INSERT' 
    request.insert(words[2])
    request.values(name: words[3], email: words[4], grade: words[5], blog: words[6])
    request.run

  when 'UPDATE'
    request.update(words[1]) if words[1] == 'SET'
    request.set(email: words[3], blog: words[5]) if words[2] == 'email'
    request.where(name: words[6]) if words[4] == 'WHERE'
    request.run

  when 'DELETE'
    request.from(words[2]) if words[1] == 'FROM' 
    request.where(name: words[4]) if words[3] == 'WHERE'
    request.run

  when 'quit'
    break

  else
    puts "Invalid input"
  
  end

end
