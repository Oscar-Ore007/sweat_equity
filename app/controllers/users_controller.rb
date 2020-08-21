class UsersController < ApplicationController

    get '/signup' do 
        erb :'users/signup'
    end 

    post '/signup' do 
        if params[:username].empty? || params[:email].empty? 
            erb ':user/signup'
        else 
        @user = User.create(params)
        session[:user_id]=@user.id
        redirect '/workouts'
        end 
    end 


    get '/login' do 
        erb :'users/login'
    end 

    post '/login' do 
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id 
            erb '/workouts'
        else
            redirect '/login' 
    end 
end 


get '/logout' do 
    session.clear 
    redirect '/'
end 



    # get '/users/dash' do 
    #     erb :'user/dashboard' 
    # end 
end 