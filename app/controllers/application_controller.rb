class ApplicationController < ActionController::Base
    include Pundit
    rescue_from Pundit::NotAuthorizedError,with: :user_not_authorized
    private
    def user_not_authorized
        flash[:warning] = "you are not authorized"
        redirect_to(request.referrer || root_path)
    end
end
