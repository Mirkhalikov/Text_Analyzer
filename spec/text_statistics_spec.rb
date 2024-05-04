# frozen_string_literal: true

require_relative '../lib/text_statistics'
require 'simplecov'
SimpleCov.start

RSpec.describe TextStatistics do
  let(:text) { 'This is a test text. It contains multiple sentences, with some repeated words.' }
  let(:text_statistics) { TextStatistics.new(text) }

  describe '#word_count' do
    it 'returns the correct word count' do
      expect(text_statistics.word_count).to eq(13)
    end
  end

  describe '#sentence_count' do
    it 'returns the correct sentence count' do
      expect(text_statistics.sentence_count).to eq(2)
    end
  end

  describe '#unique_words_count' do
    it 'returns the correct count of unique words' do
      expect(text_statistics.unique_words_count).to eq(13)
    end
  end

  describe '#average_sentence_length' do
    it 'returns the correct average sentence length' do
      expect(text_statistics.average_sentence_length).to eq(6.5)
    end
  end

  describe '#word_frequency' do
    it 'returns the correct word frequency' do
      expected_frequency = { 'this' => 1, 'is' => 1, 'a' => 1, 'test' => 1, 'text.' => 1,
                             'it' => 1, 'contains' => 1, 'multiple' => 1, 'sentences,' => 1,
                             'with' => 1, 'some' => 1, 'repeated' => 1, 'words.' => 1 }
      expect(text_statistics.word_frequency).to eq(expected_frequency)
    end
  end

  describe '#average_word_length' do
    it 'returns the correct average word length' do
      expect(text_statistics.average_word_length).to eq(5.076923076923077)
    end
  end

  describe '#character_frequency' do
    it 'returns the correct character frequency' do
      expected_frequency = { 'T' => 1, 'h' => 2, 'i' => 5, 's' => 8, 'a' => 3, 't' => 10,
                             'e' => 10, 'x' => 1, '.' => 2, 'c' => 2, 'o' => 3, 'n' => 4,
                             'm' => 2, 'u' => 1, 'l' => 2, 'p' => 2, 'r' => 2, 'd' => 2,
                             'w' => 2, "," => 1, "I" => 1 }
      expect(text_statistics.character_frequency).to eq(expected_frequency)
    end
  end
  
  describe '#prepositions_and_conjunctions_frequency' do
    it 'returns the correct prepositions and conjunctions frequency' do
      expected_frequency = { 'is' => 1, 'a' => 1, 'it' => 1, 'with' => 1, 'some' => 1 }
      expect(text_statistics.prepositions_and_conjunctions_frequency).to eq(expected_frequency)
    end
  end
  
  describe '#text_uniqueness_index' do
    it 'returns the correct text uniqueness index' do
      expect(text_statistics.text_uniqueness_index).to eq(100)
    end
  end
end
