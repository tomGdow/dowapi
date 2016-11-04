class TaoisighController < ApplicationController
  before_action :set_taoiseach, only: [:show, :update, :destroy]

  # GET /taoisigh
  def index
    @taoisigh = Taoiseach.all

    render json: @taoisigh
  end

  # GET /taoisigh/1
  def show
    render json: @taoiseach
  end

  # POST /taoisigh
  def create
    @taoiseach = Taoiseach.new(taoiseach_params)

    if @taoiseach.save
      render json: @taoiseach, status: :created, location: @taoiseach
    else
      render json: @taoiseach.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /taoisigh/1
  def update
    if @taoiseach.update(taoiseach_params)
      render json: @taoiseach
    else
      render json: @taoiseach.errors, status: :unprocessable_entity
    end
  end

  # DELETE /taoisigh/1
  def destroy
    @taoiseach.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taoiseach
      @taoiseach = Taoiseach.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def taoiseach_params
      params.require(:taoiseach).permit(:name, :party, :description, :constituency, :taoiseach_number, :taoiseach_start, :taoiseach_finish, :taoiseach_terms, :dail_elected, :dail_leave, :date_of_birth, :date_of_death, :image_url, :url)
    end
end
