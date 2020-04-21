class Api::GamesController < ApplicationController
  def params_method
    if params["my_name"].first.upcase = "A"
      @output_message = "Hello! Your first name starts with the first letter of the alphabet!"
      render "query_params.json.jb"
    end
  end

  def credential_method
    if params["username"] == "hugh" && params["password"] == "swordfish"
      @message = "Valid Credentials."
    else
      @message = "Invalid Credentials."
    end
    render "params_game.json.jb"
  end

  def guess_method
    winning_number = 54
    input_guess = params["number"].to_i
    if input_guess > winning_number
      @message = "Pick lower!"
    elsif input_guess < winning_number
      @message = "Pick higher!"
    else
      @message = "You win!"
    end
    render "params_game.json.jb"
  end
end
