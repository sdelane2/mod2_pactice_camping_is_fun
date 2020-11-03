class SignupsController < ApplicationController
    def new
        @signup = Signup.new
    end

    def create
        @signup = Signup.create(get_params)
        redirect_to camper_path(@signup.camper_id)
    end

    private

    def get_params
        strong_params = params.require(:signup).permit(:camper_id, :activity_id)
    end

end