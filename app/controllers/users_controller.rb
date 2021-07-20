class UsersController < ApplicationController
  def edit
  end

  def update
   user = User.find(current_user.id)
   if user.update(paramas_get)
     redirect_to root_path
   else
     render :edit
   end
  end
 
  private 
  def paramas_get
   params.require(:user).permit(:name,:email)
  end

end
