class WorkoutsController < ApplicationController    
    
    get '/workouts' do 
        if logged_in?
            @workouts = Workout.all 
            erb :'workouts/index'
        else 
            redirect '/login'
        end 
end 

get 'workouts/new' do 
    erb :'workouts/new'
end 

post '/workouts' do 
    workout = Workout.new(params)

    binding.pry 
end 
end 