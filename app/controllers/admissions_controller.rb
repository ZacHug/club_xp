class AdmissionsController < ApplicationController

  def new
    @club = Club.find(params[:club_id])
    @admission = Admission.new
  end

  def created
    @admission = Admission.new(admissions_param)

  end

private

def admissions_param
  params.require(:admission).permit(:user_id, :club_id, :amount, :price, :date_of)
end
end
