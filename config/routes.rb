Rails.application.routes.draw do
  devise_for :employees
get "employeehomepage", to: "home#employeehomepage"
get "hrhomepage",  to: "home#hrhomepage"
get "intropage", to: "home#intropage"
get "landingpage", to: "home#landingpage"
get "leavespage", to: "home#leavespage"
#get "adminhome" , to: "admin#adminhome"
get "attendance" , to: "home#attendance"
get "managerpage", to: "manager#managerpage"
#get "leavetab" , to: "admin#leavetab"
#get "designationmanagement" , to: "designation#designationmanagement"
#get "employeemanagement" , to: "admin#employeemanagement"
#get "holidaysform" , to: "holidays#holidaysform"
#get "holidaystab" , to: "holidays#holidaystab"
#get "projectmanagement" , to: "project#projectmanagement"
#get "projecttab", to: "project#projecttab"
#post "adminhome" , to: "admin#create"
post "leaves/:id/edit", to:"leaves#update"
#post "projectmanagements", to: "projectmanagements#new"
#post "holidaysform", to: "holidays#create"


#get "designationmanagement" , to: "designation#designationmanagement"
#get "designationtab", to: "designation#designationtab"
#post "designationmanagement", to: "designation#create"

  #get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#intropage"

  resources :holidays
  resources :designations 
  resources :projectmanagements
  resources :leaves
  resources :employees
  resources :employee_details
  resources :addresses
end
