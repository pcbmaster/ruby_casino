require_relative 'player.rb'
require_relative 'NavClass.rb'
require 'pry'
person_obj = Player.new('Dave McDaveface', 500)
start_obj = NavClass.new(person_obj)
