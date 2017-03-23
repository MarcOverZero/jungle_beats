require 'pry'
require './lib/linked_list'

class JungleBeat
  attr_reader :list, :user_beats
  def initialize
    @list = LinkedList.new
    @rate = 500
    @voice = "Boing"
    @user_beats
    @beats_menu
  end

  def run
    puts "Welcome to Jungle Beats, you have 15 beats available. Please enter your selection."
    @user_beats = gets
    play
  end

  def play
    `say -r #{@rate} -v #{@voice} #{@list.to_string}`
    count
  end

  # def append(input)
  #   input = validate_beats(input)
  #   initial_list_count = count
  #
  #   input.split.each do |word|
  #     @list.append(word)
  #   end
  #
  #   count - initial_list_count
  #   self.list.to_string
  # end
  #
  # def prepend(data)
  #   input = validate_beats(data)
  #
  #   input.split.each do |word|
  #     @list.prepend(word)
  #   end
  #
  #   count
  # end


  def validate_beats(user_beats)
    binding.pry

    valid_beats = ["doop", "deep", "bip", "bop", "shoo",
                    "bow", "tee", "dee", "boop", "doo",
                    "ditt", "la", "na", "shu", "marc"]
    @beats_menu = valid_beats.join
    beats = user_beats.split(" ")
    beats.each do |word|
      @list.append(word) if valid_beats.include?(word)
    end
  end

  def count
  list.count
  end

  def all
   list.to_string
  end

  def rate(speed)
   @rate = speed
  end

  def reset_rate
   @rate = 500
  end

  def voice(the_voice)
   @voice = the_voice
  end

  def reset_voice
   @voice = "Boing"
  end

end

JungleBeat.new.run
