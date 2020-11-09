class UsersController < ApplicationController
def edit
end

def update
  current_user.update(user_params)
  if current_user.update valid?
end

private
def user_params
params.require(:user).permit(:name, :email)
end
end