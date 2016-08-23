class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
    @all = Doctor.all
  end

  def edit
    @doctor = Doctor.find(params[:id])
    @all = Doctor.all
  end

  def update
    @doctor = Doctor.find(params[:id])
    @doctor.update(doctor_params)
    redirect_to doctors_path
  end

  def create
    Doctor.create(doctor_params)
    redirect_to doctors_path
  end

   def show
    @doctor = Doctor.find(params[:id])
    @appointments = Doctor.find(params[:id]).appointments
    @patients = Doctor.find(params[:id]).patients
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name)
  end

end
