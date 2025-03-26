class Departments::AppointmentsController < ApplicationController
  def create
    @patient = Patient.find(params[:patient_id])
    @appointment = @patient.appointments.build(appointment_params)

    if @appointment.save
      respond_to do |format|
        format.turbo_streamformat.turbo_stream
        format.html { redirect_to @patient }
      end
    else
      render :new
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:scheduled_at)
  end
end
