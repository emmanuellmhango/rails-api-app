class Api::V1::RootController < ApplicationController
  def index
    @greeting = Message.order('RANDOM()').first
    render json: { message: @greeting.message }
  end
end
