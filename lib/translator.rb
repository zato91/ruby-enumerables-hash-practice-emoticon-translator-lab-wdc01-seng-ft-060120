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

def get_japanese_emoticon(link,emoti_eng)
  # code goes here
end

def get_english_meaning(link,emot_jap)
  # code goes here
  eng_meaning = "sorry"
  yml_hash = load_library(link)
  yml_hash.each do |key,value| 
   x =  if value[:japanese] === emot_jap
      eng_meaning = key 
    end
  end
  eng_meaning
end

