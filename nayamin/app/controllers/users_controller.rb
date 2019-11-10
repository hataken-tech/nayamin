class UsersController < ApplicationController
  
  def mypage
  end
  
  def sign_up
    @user = User.new
  end
  
  
  def sign_in
    
  end
  
  
  def create
    
    @user = User.new(name: params[:name], email: params[:email], password: params[:password], image_name: "default_user.jpeg")
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/")
    else
      flash[:danger] = "ユーザー登録に失敗しました。"
      redirect_to("/sign_up")
    end
  end
  
  
  def login
    password_md5 = User.generate_password(params[:password])
    @user = User.find_by(email: params[:email], password: password_md5)

    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/")
    else
      flash[:danger] = "ログインに失敗しました"
      redirect_to("/sign_in")
    end
  end
  
  
  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/")
  end
  
  def edit
    @user = User.find_by(id: params[:id])
  end
  
  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    
    if params[:image]
      @user.image_name = "#{@user.id}.jpeg"
      image = params[:image]
      File.binwrite("public/user_images/#{@user.image_name}", image.read)
    end
    
    if @user.save
      flash[:notice] = "ユーザー情報を編集しました"
      redirect_to("/mypage")
    else
       flash[:danger] = "ユーザー情報の編集に失敗しました"
      redirect_to("/mypage")
    end
  end
  
  
end
