class HurlingAllIrelandsController < ApplicationController
  before_action :set_hurling_all_ireland, only: [:show, :update, :destroy]

  # GET /hurling_all_irelands
  def index
    @hurling_all_irelands = HurlingAllIreland.all

    render json: @hurling_all_irelands
  end

  # GET /hurling_all_irelands/1
  def show
    render json: @hurling_all_ireland
  end

  # POST /hurling_all_irelands
  def create
    @hurling_all_ireland = HurlingAllIreland.new(hurling_all_ireland_params)

    if @hurling_all_ireland.save
      render json: @hurling_all_ireland, status: :created, location: @hurling_all_ireland
    else
      render json: @hurling_all_ireland.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hurling_all_irelands/1
  def update
    if @hurling_all_ireland.update(hurling_all_ireland_params)
      render json: @hurling_all_ireland
    else
      render json: @hurling_all_ireland.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hurling_all_irelands/1
  def destroy
    @hurling_all_ireland.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hurling_all_ireland
      @hurling_all_ireland = HurlingAllIreland.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hurling_all_ireland_params
      params.require(:hurling_all_ireland).permit(:county, :description, :winfirst, :winlast, :wintotal)
    end
end
