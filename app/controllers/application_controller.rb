class ApplicationController < ActionController::API
  def show_errors(exception)
    if exception.class == ActiveRecord::RecordNotFound
      render json:
      { message: exception.message }
    else
      render json:
      { message: exception.message }
    end
  end
end
