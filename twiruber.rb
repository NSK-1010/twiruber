require "twitter"

require_relative "twiruber.d/user_setup"

# client help
def help
    puts "Welcome to Twiruber."
    puts "ruby twiruber.rb [options]"
    puts "options"
    puts "-t Timeline"
    puts "-r Reply"
    puts "-l List"
    puts "-n Tweet"
    puts "-h help"
end

# display timeline
def timeline
    @client.home_timeline.each do |tweet|
        puts "\e[33m" + tweet.user.name + "\e[32m" + "[ID:" + tweet.user.screen_name + "]"
        puts "\e[0m" + tweet.text
    end
end

# display mentions
def mentions
    @client.mentions_timeline.each do |tweet|
        puts "\e[33m" + tweet.user.name + "\e[32m" + "[ID:" + tweet.user.screen_name + "]"
        puts "\e[0m" + tweet.text
    end
end

# display list
def list
    @client.list_timeline("リストを作ったユーザID", "リスト名").each do |tweet|
        puts "\e[33m" + tweet.user.name + "\e[32m" + "[ID:" + tweet.user.screen_name + "]"
        puts "\e[0m" + tweet.text
    end
end

# tweet
def tweet
    print ">"
    gets.chomp = naiyou
    @client.update(naiyou)
    puts "OK"
end

option = ARGV[0].to_s

if option == "" || option == "-h" then
  help
elsif option == "-t" then
  timeline
elsif option == "-m" then
  mentions
elsif option == "-l" then
  list
elsif option == "-n"then
  tweet
  timeline
end