class Admin::EnquiriesController < ApplicationController
  before_action :authenticate_user!
  layout 'new_admin'

  def index
    @enquiries = Enquiry.order('created_at desc')
  end

  def show
    @enquiry = Enquiry.find_by(id: params[:id])
    redirect_to '/admin/enquiries', notice: 'Invalid enquiry id' if @enquiry.blank?
  end
end