# frozen_string_literal: true

require_relative '../lib/text_statistics'
require 'simplecov'
SimpleCov.start

RSpec.describe TextStatistics do
  let(:text) { '' }
  let(:text_statistics) { TextStatistics.new(text) }

  describe '#word_count' do
    it 'returns the correct word count' do
      expect(text_statistics.word_count).to eq(0)
    end
  end

  describe '#sentence_count' do
    it 'returns the correct sentence count' do
      expect(text_statistics.sentence_count).to eq(0)
    end
  end

  describe '#unique_words_count' do
    it 'returns the correct count of unique words' do
      expect(text_statistics.unique_words_count).to eq(0)
    end
  end

  describe '#average_sentence_length' do
    it 'returns the correct average sentence length' do
      expect(text_statistics.average_sentence_length).to eq(0)
    end
  end

  describe '#word_frequency' do
    it 'returns the correct word frequency' do
      expect(text_statistics.word_frequency).to eq({})
    end
  end

  describe '#average_word_length' do
    it 'returns the correct average word length' do
      expect(text_statistics.average_word_length).to eq(0)
    end
  end

  describe '#character_frequency' do
    it 'returns the correct character frequency' do
      expect(text_statistics.character_frequency).to eq({})
    end
  end

  describe '#prepositions_and_conjunctions_frequency' do
    it 'returns the correct prepositions and conjunctions frequency' do
      expect(text_statistics.prepositions_and_conjunctions_frequency).to eq({})
    end
  end

  describe '#text_uniqueness_index' do
    it 'returns the correct text uniqueness index' do
      expect(text_statistics.text_uniqueness_index).to eq(100.0)
    end
  end
end
