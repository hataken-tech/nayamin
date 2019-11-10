Rails.application.routes.draw do
  
  resources :blogs
  root 'first#top' #トップページをblogsコントローラのindexアクションに設定
  

  #first
  get "/", to:'first#top'
  
  get "/a_0", to:'first#a_0'
  
  get "/a_1", to:'first#a_1'
  
  get "/a_2", to:'first#a_2'
  
  get "/a_3", to:'first#a_3'
  
  get "/a_4", to:'first#a_4'
  
  get "/a_5", to:'first#a_5'
  
  get "/a_6", to:'first#a_6'
  
  #second
  
  get "/b_1", to:'second#b_1'
  
  get "/b_2", to:'second#b_2'
  
  get "/b_3", to:'second#b_3'
  
  get "/b_4", to:'second#b_4'
  
  get "/b_5", to:'second#b_5'
  
  #third
  
  get "/c_1", to:'third#c_1'
  
  get "/c_2", to:'third#c_2'
  
  get "/c_3", to:'third#c_3'
  

  #solution
  get "/solution_list", to:"solution#solution_list"
  
  get "/all_solve", to:"solution#all_solve"
  
  get "/depressed", to:"solution#depressed"
   
  get "/frustration", to:"solution#frustration"
  
  get "/impatient", to:"solution#impatient"
  
  get "/motivation", to:"solution#motivation"
  
  #get "/motivation_root", to:"solution#motivation_root"
  
  get "/my_lack", to:"solution#my_lack"
  
  get "/nervous", to:"solution#nervous"
  
  get "/pressure", to:"solution#pressure"
  
  get "/sleepy", to:"solution#sleepy"
  
  get "/stress", to:"solution#stress"
  
  get "/shame", to:"solution#shame"
  
  
  #users
  get "/mypage", to:"users#mypage"
  
  get "/logout" ,to: "users#logout"
  
  get '/sign_up', to:"users#sign_up"
  
  get '/sign_in', to:"users#sign_in"
  
  post "/create", to:"users#create" 
  
  post "/login", to:"users#login"
  
  get "/users/:id/edit" => "users#edit"

  post "/users/:id/update" => "users#update"
  
  
  #kaiketsu
  get "/login", to:"kaiketsu#nayami"
  
  get "/a_0", to:"kaiketsu#a_0"
  
  
  #other
  get "/board", to:'other#board'
  
  get "/write", to:'other#write'
  
  post "/nayamin", to:"other#submit"
  
  get "/other/:id/" => "other#edit"

  post "/other/:id/update" => "other#update"
  
  post "/other/:id/destroy" => "other#destroy"
  
  get "/sorry", to:"other#sorry"
  
  get "/solved" => "other#solved"
  
  get "/final_question" => "other#final_question"
  
  get "/write_merit", to:"other#write_merit"
  
  get "/gave_up", to:"other#gave_up"
  
  get "/got_angry", to:"other#got_angry"
  
  get "/tell_the_truth", to:"other#tell_the_truth"
  
  get "/proposal", to:"other#proposal"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
