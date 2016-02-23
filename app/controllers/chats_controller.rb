class ChatsController < ApplicationController
  before_action :set_chat, only: [:show, :edit, :update, :destroy]
  before_action :set_game, only: [:create, :new, :edit]

  def index
    @chats = Chat.all
  end

  def show
    # @chat = Chat.find(params[:id])
  end

  def edit
    @chat = Chat.find(params[:id])
  end

  def new
    # if (params[:games_id])
      # game = Game.find(params[:games_id])
      # @chat = Chat.new(params[:game_id])

      # @chat = Chat.new(params[:id])

    # else
      # create new
      @chat = Chat.new
    # end
    # respond_to do |format|
    # format.html # new.html.erb
  end

  def create
    @chat = Chat.new(chat_params)
    @chat.game_id = @game.id
    respond_to do |format|
      if @chat.save
        format.html { redirect_to @chat, notice: 'chat was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @chat.update(chat_params)
        format.html { redirect_to @chat, notice: 'chat was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @chat.destroy
    respond_to do |format|
      format.html { redirect_to chats_url, notice: 'chat was successfully destroyed.' }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_chat
    @chat = Chat.find(params[:id])
  end

  def set_game
    @game = Game.find(params[:game_id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def chat_params
    params.require(:chat).permit(:comment, :game_id)
  end
end
