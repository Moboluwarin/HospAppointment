class DoctorsController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :set_doctor, only: [:show, :edit, :update, :destroy]
  def index
    @doctors = Doctor.all.order("created_at Desc")
  end

  def show

  end

  def new
    @doctor =current_user.doctors.build
  end

  def create

    @doctor = current_user.doctors.build(doctor_params)
    if @doctor.save!
      redirect_to root_path, notice: "Doctor saved!"
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @doctor.update(doctor_params)
      redirect_to root_path, notice: "updated!"
    else render 'edit'
    end
  end

  def destroy
    @doctor.destroy
    redirect_to root_path, notice: "record deleted! "
  end

  private
  def set_doctor
    @doctor = Doctor.find(params[:id])
  end
  def doctor_params
    params.require(:doctor).permit(:name)
  end

end
