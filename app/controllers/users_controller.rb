class UsersController < ApplicationController
    def user
        @users = User.all
    end
end
