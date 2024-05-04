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

  def average_word_length
    words = text.split
    total_length = words.map(&:length).reduce(:+)
    total_length.to_f / words.size
  end

  def character_frequency
    frequency = Hash.new(0)
    text.chars.each { |char| frequency[char] += 1 unless char.match(/\s/) }
    frequency
  end

  def prepositions_and_conjunctions_frequency
    prepositions_and_conjunctions = %w[in on at by for from with to into onto upon as about after before during since through]
    words = text.downcase.split
    frequency = Hash.new(0)
    words.each { |word| frequency[word] += 1 if prepositions_and_conjunctions.include?(word) }
    frequency
  end

  def text_uniqueness_index
    unique_words = text.downcase.split.uniq.size
    total_words = text.split.size
    (unique_words.to_f / total_words) * 100
  end
end
