class RsvpsController < ApplicationController

  before_action :authenticate_user!, except: %i[index show]

  def create

  end
end
