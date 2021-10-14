class VehiclesController < ApplicationController
  def index
    if params[:search].present?
      @vehicles = Vehicle.where(model: params[:search])
      @vehicles = Vehicle.joins(:user).where(users: {name: params[:search]}) if @vehicles.blank?
    else
      @vehicles = Vehicle.all
    end
  end

  def import
    Vehicle.import(params[:file])
    redirect_to root_path
  end

  def download_csv
    respond_to do |format|
      format.html
      format.csv { send_data Vehicle.to_csv, filename: "vehicles-#{Date.today}.csv" }
    end
  end
end
