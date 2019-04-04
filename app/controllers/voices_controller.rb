class VoicesController < ApplicationController
  def index
    @voices = Voice.all
  end

  def create
    @voice = Voice.new
    @voice.body = params[:body]
    @voice.email = params[:email]
    #binding.pry
    if @voice.save
      redirect_to voices_path
    end
  end


  private

    # def voice_params
    #   params.require(:voice).permit(
    #     :body,
    #     :email
    #   )
    # end
end
