class Leke::PlaysController < ApplicationController
  def index
    @leke_plays = Leke::Play.all.page(params[:page])
  end
end
