Rails.application.routes.draw do
  get("flexible/square/new", {:controller => "calculations", :action => "square_form"})
  get("flexible/square/:number", {:controller => "calculations", :action => "square"})
  get("/square_root/:number", {:controller => "calculations", :action => "flexible_square_root"})
  get("/payment/:basis_points/:number_of_years/:present_value", {:controller => "calculations", :action => "flexible_payment"})

end
