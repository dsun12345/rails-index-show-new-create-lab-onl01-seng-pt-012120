class CouponsController < ApplicationController
    
    def index
        @coupon = Coupon.all
    end 

    def show 
        @coupon = Coupon.find_by(params[:id])
    end 

    def new 
    end 

    def create
        @coupon = Coupon.new
        @coupon.store = params[:store]
        @coupon.coupon_code = params[:coupon_code]
        @coupon.save
        redirect_to coupon_path(@coupon)
    end 
end 