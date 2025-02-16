class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @borrowings = current_user.borrowings.where(returned: false)
  end
end
