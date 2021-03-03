class AppointmentsController < ApplicationController
    def index
        @appointments = Appointment.all 
    end

    def new
        @appointment = Appointment.new
    end

    def create
        Appointment.create(appointment_params)
        redirect_to appointment_path
    end

    def show
        @appointment = Appointment.find(params[:id])
    end
end