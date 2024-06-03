class ZebraController < ApplicationController
  def home
    render({ :template => "dice/home" })
  end
def giraffe
  @rolls = [rand(1..6) + rand(1..6), rand(1..6) + rand(1..6)]
  render({ :template => "dice/two_six"})
end


def elephant
  @rolls = [rand(1..10) + rand(1..10), rand(1..10) + rand(1..10)]
  render({ :template => "dice/two_ten"})
end

def dog
  @rolls = [rand(1..20)]
  render({ :template => "dice/one_twenty"})
end

def cat
  @rolls = Array.new(5) { rand(1..4) }
  render({ :template => "dice/five_four" })
end


def roll_dice
  dice = params.fetch("dice").to_i
  sides = params.fetch("sides").to_i
  @rolls = Array.new(dice) { rand(1..sides) }
  @dice = dice
  @sides = sides
  render({ :template => "dice/roll_dice" })
end
end
