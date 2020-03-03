class Api::PagesController < ApplicationController
  def fortune_method
    i = rand(1..3)
    if i == 1
      render json: { fortune: "You will die a terrible death very soon", lucky_nums: [rand(1..60), rand(1..60), rand(1..60), rand(1..60), rand(1..60), rand(1..60)] }
    elsif i == 2
      render json: { fortune: "You will live but only for a little", lucky_nums: [rand(1..60), rand(1..60), rand(1..60), rand(1..60), rand(1..60), rand(1..60)] }
    else
      render json: { fortune: "You will outlive your great great grandkids", lucky_numbers: [rand(1..60), rand(1..60), rand(1..60), rand(1..60), rand(1..60), rand(1..60)] }
    end
  end
end
