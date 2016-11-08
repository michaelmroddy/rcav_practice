class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def squareroot
    @num= params[:num].to_f
    @sqrnum = Math.sqrt(@num).round(2)
  end
  def randomize
    @low = params[:low].to_i
    @high = params[:high].to_i
    @rand = @low+Random.rand(@high-@low)
  end
  def calcpay
    @irate = (params[:irate].to_i)/100.0
    @years = params[:years].to_i
    @amount = params[:amount].to_i
    @payment = ((@irate/12/100 * @amount)/(1-((1+@irate/12/100)**(-@years*12)))).round(2)
  end
end
