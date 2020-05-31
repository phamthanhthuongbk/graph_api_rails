class ApplicationController < ActionController::API
    def current_user
        User.new
    end

    def fields
        params.permit(
            :fields,
        )
    end
end
