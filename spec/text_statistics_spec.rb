require_relative '../lib/text_statistics'

RSpec.describe TextStatistics do
  let(:text) { "This is a test text. It contains multiple sentences, with some repeated words." }
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
      expected_frequency = { "this" => 1, "is" => 1, "a" => 1, "test" => 1, "text." => 1, 
                             "it" => 1, "contains" => 1, "multiple" => 1, "sentences," => 1, 
                             "with" => 1, "some" => 1, "repeated" => 1, "words." => 1 }
      expect(text_statistics.word_frequency).to eq(expected_frequency)
    end
  end
end
