Rails.application.routes.draw do
  get("/dice/2/6", {:controller => "zebra", :action => "giraffe"})
  get("/dice/2/10", {:controller => "zebra", :action => "elephant"})
  get("/dice/1/20", {:controller => "zebra", :action => "dog"})
  get("/dice/5/4", {:controller => "zebra", :action => "cat"})
  get("/", {:controller => "zebra", :action => "home"})
  get("/dice/:dice/:sides", { :controller => "zebra", :action => "roll_dice" })
end
