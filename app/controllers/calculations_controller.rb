class CalculationsController < ApplicationController

  def square_form
    @user_num = params["number"].to_i
    render("calculations/square_form.html.erb")
  end

  def square
    @user_num = params["number"].to_i
    @square = @user_num ** 2
    render("calculations/flexible_square_results.html.erb")
  end

  def flexible_square_root
    @user_num = params["number"].to_f
    @square_root = @user_num ** (1/2.0)
    render("calculations/square_root.html.erb")
  end

  def flexible_payment
    @basis_points = params["number"].to_f
    @number_of_years = params["number"].to_f
    @present_value = params["number"].to_f
    @monthly_payment = (@basis_points * @present_value) / (1.0 - (1.0 + @basis_points) ** -@number_of_years)
    render("calculations/flexible_payment.html.erb")
  end

end
