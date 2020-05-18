# require modules here
require 'pry'
require 'yaml'


def load_library(emoti)
  new_hash = Hash.new
  emoti = YAML.load_file('./lib/emoticons.yml')
  emoti.each do |key,value| 
    new_hash[key] = {}
    new_hash[key][:english] = value[0]
    new_hash[key][:japanese] = value[1]
   end
 new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

