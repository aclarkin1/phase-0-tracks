def french_open
  name1 = "Garbine Muguruza"
  title1 = "women's singles"
  puts "The French Open is the most prestigious tennis tournament played on clay."
  yield(title1, name1)
end
  
french_open { |title1, name1| puts "The winner of the French Open 2016 in #{title1} is #{name1}" }