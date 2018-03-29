require_relative 'multilinguist'

class Quotecollector < Multilinguist

  @@phrases = []

  def memorize(phrase)
    @@phrases.push(phrase)
  end

  def translate(phrase)
    say_in_local_language(phrase)
  end

  def self.phrases
    @@phrases
  end

  def random
    say_in_local_language(@@phrases.sample)
  end

end
