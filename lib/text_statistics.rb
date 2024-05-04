# frozen_string_literal: true

class TextStatistics
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def word_count
    text.split.size
  end

  def sentence_count
    text.split(/\.|\?|!/).size
  end

  def unique_words_count
    text.downcase.split.uniq.size
  end

  def average_sentence_length
    words = text.split
    sentences = text.split(/\.|\?|!/)
    words.size.to_f / sentences.size
  end

  def word_frequency
    words = text.downcase.split
    frequency = Hash.new(0)
    words.each { |word| frequency[word] += 1 }
    frequency
  end
end
