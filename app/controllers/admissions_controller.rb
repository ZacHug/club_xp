class AdmissionsController < ApplicationController

  def new
    @club = Club.find(params[:club_id])
    @admission = Admission.new
  end

  def create
    @club = Club.find(params[:club_id])
    @admission = Admission.create!(customers: params[:admit_cnt].to_i, club_id: @club.id, amount: params[:admit_cnt].to_i * @club.price, state: "Pending", user_id: current_user.id)
    @qr = RQRCode::QRCode.new("http://google.com", size: 4, level: :h)
    @admission.qr = "http://google.com"
    @admission.save

    redirect_to new_admission_payment_path(@admission)
  end

  def show
    @admission = Admission.find(params[:id])
     @qr = RQRCode::QRCode.new(@admission.qr, size: 4, level: :h)



    # @qr = RQRCode::QRCode.new("QRCODE#{@admission.id} #{@admission.club.name}", size: 2, level: :h)
  end
#  private

# def admissions_param
#   params.require(:admission).permit(:user_id, :club_id, :amount, :price, :date_of)
# end
end
