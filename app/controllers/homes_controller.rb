class HomesController < ApplicationController
  before_filter :set_home, only: [:show, :edit, :update, :destroy]

  def index
  end

end
