class PaymentsController < ApplicationController
  before_action :set_admission

  def new
  end

  def create
    customer = Stripe::Customer.create(
        source: params[:stripeToken],
        email:  params[:stripeEmail]
      )

      charge = Stripe::Charge.create(
        customer:     customer.id,   # You should store this customer id and re-use it.
        amount:       @admission.amount_cents,
        description:  "Payment for Entry #{@admission.id} for club #{@admission.club.name}",
        currency:     @admission.amount.currency
      )

      @admission.update(payment: charge.to_json, state: 'paid')
      redirect_to admission_path(@admission)

    rescue Stripe::CardError => e
      flash[:alert] = e.message
      redirect_to new_admission_payment_path(@admission)
  end

  private

  def set_admission
    @admission = current_user.admissions.where(state: 'Pending').find(params[:admission_id])
  end
end
