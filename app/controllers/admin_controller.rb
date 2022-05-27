class AdminController < ApplicationController

 

  def employeemanagement
    @employees = Employee.all
  end

 


end