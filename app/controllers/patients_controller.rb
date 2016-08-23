class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
    @all = Patient.all
  end

  def edit
    @patient = Patient.find(params[:id])
    @all = Patient.all
  end

  def update
    @patient = Patient.find(params[:id])
    @patient.update(patient_params)
    redirect_to patients_path
  end

  def create
    Patient.create(patient_params)
    redirect_to patients_path
  end

  def show
    @patient = Patient.find(params[:id])
    @appointments = Patient.find(params[:id]).appointments
    @doctors = Patient.find(params[:id]).doctors
  end

  private

  def patient_params
    params.require(:patient).permit(:name)
  end

end
