require 'rss'
require 'open-uri'

  url = 'https://feeds.feedburner.com/OLD-WordOfTheDay.rss'
  URI.open(url) do |rss|
    feed = RSS::Parser.parse(rss)
        puts "Title: #{feed.title}"        
    feed.items.each do |item|
        puts "Word: #{item.title}"
    end
  end