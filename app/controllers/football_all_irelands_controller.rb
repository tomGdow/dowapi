class FootballAllIrelandsController < ApplicationController
  before_action :set_football_all_ireland, only: [:show, :update, :destroy]

  # GET /football_all_irelands
  def index
    @football_all_irelands = FootballAllIreland.all

    render json: @football_all_irelands
  end

  # GET /football_all_irelands/1
  def show
    render json: @football_all_ireland
  end

  # POST /football_all_irelands
  def create
    @football_all_ireland = FootballAllIreland.new(football_all_ireland_params)

    if @football_all_ireland.save
      render json: @football_all_ireland, status: :created, location: @football_all_ireland
    else
      render json: @football_all_ireland.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /football_all_irelands/1
  def update
    if @football_all_ireland.update(football_all_ireland_params)
      render json: @football_all_ireland
    else
      render json: @football_all_ireland.errors, status: :unprocessable_entity
    end
  end

  # DELETE /football_all_irelands/1
  def destroy
    @football_all_ireland.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_football_all_ireland
      @football_all_ireland = FootballAllIreland.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def football_all_ireland_params
      params.require(:football_all_ireland).permit(:county, :description, :winfirst, :winlast, :wintotal)
    end
end
