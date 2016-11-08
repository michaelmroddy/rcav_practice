Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square_root/:num", { :controller => "calculations", :action => "squareroot" })
  get("/random/:low/:high", { :controller => "calculations", :action => "randomize" })
  get("/payment/:irate/:years/:amount", { :controller => "calculations", :action => "calcpay" })
end
