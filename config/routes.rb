Rails.application.routes.draw do
  get("flexible/square/new", {:controller => "calculations", :action => "square_form"})
  get("flexible/square/results", {:controller => "calculations", :action => "square"})
  
end
