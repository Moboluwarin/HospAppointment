class PatientsController < ApplicationController
  before_action :set_doctor, only: [:index, :show, :new, :create, :destroy]
  before_action :set_patient, only: [:show, :destroy]
  def index
    @patients = @doctor.patients
  end

  def show
    end

  def new
    @patient = @doctor.patients.build
  end

  def create
    @patient = @doctor.patients.create(patient_params)
    if @patient.save
        redirect_to doctor_path(@doctor), notice: "Patient Registered!"
    else
      render :new
    end
  end

  def set_doctor
    @doctor = Doctor.find(params[:doctor_id])
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def destroy
    @patient.destroy
    redirect_to doctor_path(@doctor), notice: "Patient deleted!"
  end

  private
  def patient_params
    params.require(:patient).permit(:name, :sex, :insurance_N0)
  end
end
