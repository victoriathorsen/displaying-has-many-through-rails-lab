class DoctorsController < ApplicationController
    def index
        @doctors = Doctor.all 
    end

    def new
        @doctor = Doctor.new
    end

    def create
        Doctor.create(doctor_params)
        redirect_to doctor_path
    end

    def show
        @doctor = Doctor.find(params[:id])
    end

    private

    def this_doctor
        @doctor = Doctor.find(params[id])
    end

    def doctor_params
        params.require(:doctor).permit(:name, :department)
    end
end