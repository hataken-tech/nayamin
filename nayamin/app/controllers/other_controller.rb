class OtherController < ApplicationController
  
  
  def submit
    #if @current_user
    @nayamin = Nayami.new(name: params[:name], user_id: @current_user.id)
    if @nayamin.save
      #@nayamin.save
      flash[:notice] = "悩みを投稿しました"
      redirect_to("/board")
    else
      flash[:danger] = "エラーが発生しました。原因は投稿内容が空であるか、400文字以上かのどちらかです"
      redirect_to("/write")
    end
  end
  
  def board
    #@user = User.find_by(id:@current_user.id)
    @kenken = Nayami.where(user_id:@current_user.id)
  end
  
  def my_nayami
  end
  
  def edit
  end
  
  def update
    @hataken = Nayami.find_by(id: params[:id])
    @hataken.name = params[:name]
    if @hataken.save
      flash[:notice] = "投稿内容を編集しました"
      redirect_to("/board")
    else
      flash[:danger] = "投稿内容の編集に失敗しました"
      redirect_to("/other/#{@hataken.id}/edit")
    end
    
  end
  
  def destroy
    @hataken = Nayami.find_by(id:params[:id])
    @hataken.destroy
    flash[:notice]="投稿内容を削除しました"
    redirect_to("/board")
  end
  
  
  
  
  def write
  end
  
  def solved
  end
  
  def sorry
  end
  
  def write_merit
  end
  
  def gave_up 
  end
  
  def got_angry
  end
  
  def tell_the_truth
  end
  
  def proposal
  end
  
end
