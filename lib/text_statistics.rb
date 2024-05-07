# frozen_string_literal: true

# Класс для вычисления статистики текста
class TextStatistics
  attr_reader :text

  # Инициализация объекта с текстом
  def initialize(text)
    @text = text
  end

  # Возвращает количество слов в тексте
  def word_count
    text.split.size
  end

  # Возвращает количество предложений в тексте
  def sentence_count
    text.split(/\.|\?|!/).size
  end

  # Возвращает количество уникальных слов в тексте
  def unique_words_count
    text.downcase.split.uniq.size
  end

  # Возвращает среднюю длину предложения в тексте
  def average_sentence_length
    words = text.split
    sentences = text.split(/\.|\?|!/)
    return 0.0 if sentences.empty?

    words.size.to_f / sentences.size
  end

  # Возвращает частоту каждого слова в тексте
  def word_frequency
    words = text.downcase.split
    frequency = Hash.new(0)
    words.each { |word| frequency[word] += 1 }
    frequency
  end

  # Возвращает среднюю длину слова в тексте
  def average_word_length
    words = text.split
    total_length = words.map(&:length).reduce(:+)
    return 0.0 if words.empty?

    total_length.to_f / words.size
  end

  # Возвращает частоту каждого символа в тексте (без учета пробелов)
  def character_frequency
    frequency = Hash.new(0)
    text.chars.each { |char| frequency[char] += 1 unless char.match(/\s/) }
    frequency
  end

  #  def prepositions_and_conjunctions_frequency
  #    prepositions_and_conjunctions = %w[is it in on a some at by for from with to into onto upon as about after before during since through]
  #    words = text.downcase.split
  #    frequency = Hash.new(0)
  #    words.each do |word|
  #      prepositions_and_conjunctions.each do |prep_conj|
  #        frequency[prep_conj] += 1 if word == prep_conj
  #      end
  #    end
  #    frequency
  #  end
  # Возвращает частоту предлогов и союзов в тексте
  def prepositions_and_conjunctions_frequency
    prepositions_and_conjunctions = %w[is it in on a some at by for from with to into onto#upon as about after before during since through]
    word_frequency.select { |key, _value| prepositions_and_conjunctions.include?(key) }
  end

  # Возвращает индекс уникальности текста, выраженный в процентах
  def text_uniqueness_index
    unique_words = text.downcase.split(/\.|\?|!|,|:|;/).uniq.size
    total_words = text.split(/\.|\?|!|,|:|;/).size
    return 100.0 if total_words.empty?

    (unique_words.to_f / total_words) * 100
  end
end
