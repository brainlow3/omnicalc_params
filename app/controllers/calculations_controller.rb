class CalculationsController < ApplicationController

  def square_form
    render("calculations/square_form.html.erb")
  end

  def square
    @user_number = params[:user_number].to_f
    @square = @user_number**2.0
    render("calculations/square_results.html.erb")
  end
end
