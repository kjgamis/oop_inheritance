require_relative 'multilinguist'

class Quotecollector < Multilinguist

  @@phrases = []

  def memorize(phrase)
    @@phrases.push(phrase)
  end

  def translate(phrase)
    "#{self.say_in_local_language(phrase)}"
  end

  def self.phrases
    @@phrases
  end

  def self.random
    a = @@phrases.sample
  end

end

person = Quotecollector.new
person.memorize("Don't cry because it's over, smile because it happened.")
person.memorize("Be yourself; everyone else is already taken.")
person.memorize("You only live once, but if you do it right, once is enough.")
person.memorize("In three words I can sum up everything I've learned about life: it goes on.")
person.memorize("If you tell the truth, you don't have to remember anything.")


# puts Quotecollector.phrases

# puts Quotecollector.random
person.travel_to("Italy")

puts Quotecollector.random

# puts Quotecollector.translate(Quotecollector.random)
# puts person.translate('Hello there')
