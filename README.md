# Text Analyzer

### Text Analyzer - это Ruby библиотека для анализа текста. Она предоставляет различные методы для получения статистики о тексте, такие как подсчет слов, предложений, уникальных слов, средней длины предложения и т. д.

## Установка

#### Добавьте эту строку в ваш Gemfile:
```ruby
gem 'text_statistics'
```

#### Затем выполните команду:
```ruby
bundle install
```

#### Или установите его напрямую:
```ruby
gem install text_statistics
```

## Использование
```ruby
require 'text_statistics'

text = 'This is a test text. It contains multiple sentences, with some repeated words.'

stats = TextStatistics.new(text)

puts "Word Count: #{stats.word_count}"
puts "Sentence Count: #{stats.sentence_count}"
puts "Unique Words Count: #{stats.unique_words_count}"
puts "Average Sentence Length: #{stats.average_sentence_length}"
puts "Word Frequency: #{stats.word_frequency}"
```

### Методы

#### word_count - Возвращает количество слов в тексте.

#### sentence_count - Возвращает количество предложений в тексте.

#### unique_words_count - Возвращает количество уникальных слов в тексте.

#### average_sentence_length - Возвращает среднюю длину предложения в тексте.

#### word_frequency - Возвращает частоту каждого слова в тексте в виде хэша.

## Запуск тестов
Выполните команду:

```ruby
bundle exec rspec
```

## Запуск rubocop
Выполните команду:

```ruby
rubocop
```
