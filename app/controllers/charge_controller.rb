class ChargeController < ApplicationController
	skip_before_action :verify_authenticity_token
  def make_charge
  	require "stripe"
  	Stripe.api_key = "#{ENV['STRIPE_SECRET']}"

  	token = params[:stripeToken]

  	charge = Stripe::Charge.create({
  	    amount: 999,
  	    currency: 'usd',
  	    description: 'Example charge',
  	    source: token,
  	})

  	random_string = (0...50).map { ('a'..'z').to_a[rand(12)] }.join

  	new_charge = Charge.new(
  		access_code: random_string,
  		download_1: "1",
  		download_2: "1",
  		download_3: "1"
  		)
  	new_charge.save

  	redirect_to charge_view_downloads_path(:access_code => random_string)
  end

  def view_downloads
  	@charge = Charge.where(access_code: params[:access_code]).last

  	if params[:intruder].blank? && @charge.blank?
  			redirect_to charge_view_downloads_path(intruder: "true")
  	end



  end






  def charge_table
  end
end
