class GreeterController < ApplicationController
  
  def hello
  	random_names = ["Anil", "Divvu", "Vivvan"]
  	@name = random_names.sample
  	@time_now = Time.now
  	@times_displayed ||= 0 # if nil then assign 0 else leave variable unchanged
  	@times_displayed += 1

  end
  ## even if we dont define an empty goodbye method as long route is identified. program will run
  def goodbye
  	
  end
end
