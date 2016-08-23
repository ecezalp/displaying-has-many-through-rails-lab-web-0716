class AppointmentsController < ApplicationController
  
  

  def show
    @appointment = Appointment.find(params[:id])
    @doctor = Appointment.find(params[:id]).doctor
    @patient = Appointment.find(params[:id]).patient
  end

end
