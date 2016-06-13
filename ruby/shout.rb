module Shout
  def yell_angrily(words)
    words + "!!!" + ":("
  end
  
  def shout_angrily(words)
    words + "ARRRGH! MODULES!"
  end
  
  def yelling_happily(words)
    words + "I AM SO HAPPY!"
  end
end

class Liverpool
	include Shout
end

class Derby
	include Shout
end

#Shout.yell_angrily("Not the pizza")
#Shout.singleton_methods
#Shout.yelling_happily("WHAT'S UP WORLD?!")
lfc = Liverpool.new
derby_county = Derby.new
lfc.yelling_happily("LIVERPOOL WON!")
derby_county.yell_angrily("Derby County lost the playoff match!")