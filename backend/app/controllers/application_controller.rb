class ApplicationController < ActionController::API
    def current_user
        User.new
     end
end
