class Departments::AdmissionsController < ApplicationController
  def create
    @patient = Patient.find(params[:patient_id])
    @admission = @patient.admissions.build(admission_params)

    if @admission.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to @patient }
      end
    else
      render :new
    end
  end

  private

  def admission_params
    params.require(:admission).permit(:reason)
  end
end
