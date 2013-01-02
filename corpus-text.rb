#!/usr/bin/env ruby
# corpus-text -- generate nice random text
# -- Jashank Jeremy <jashank@rulingia.com>

$corpus = File.readlines("corpus.txt").map {|i| i.chomp}

def corpustext
  rand(10).times.map do |c|
    $corpus.sample(rand(25)).join(' ').capitalize
  end.join('. ')
end

def entry
  date = Time.at(rand * Time.now.to_i)
  y = sprintf("%04d", date.year)
  m = sprintf("%02d", date.month)
  d = sprintf("%02d", date.day)

  puts ">>> generating text for #{date.to_s}..."

  File.open("_posts/#{y}-#{m}-#{d}-index.markdown", 'w') do |f|
    f.puts "---"
    f.puts "layout: post"
    f.puts "date: #{date.strftime('%Y-%m-%d %H:%M:%S %:z')}"
    f.puts "title: #{date.strftime('%A, %d %B %Y')}"
    f.puts "---"
    f.puts ""
    f.puts "#{corpustext}."
  end
end

100.times.map { entry }
