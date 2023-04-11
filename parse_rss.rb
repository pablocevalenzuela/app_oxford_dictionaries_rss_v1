require 'rss'
require 'open-uri'

  url = 'https://feeds.feedburner.com/OLD-WordOfTheDay.rss'
  URI.open(url) do |rss|
    feed = RSS::Parser.parse(rss)
        puts "Author: #{ feed.author.name }"        
    
    feed.items.each do |word|
        puts "Word: #{ word.title }"
    end

  end