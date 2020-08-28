class Admin::EnquiriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_enquiry, only: [:show, :destroy]

  layout 'new_admin'

  def index
    @enquiries = Enquiry.order('created_at desc')
  end

  def show
  end

  def destroy
    @enquiry.delete
    redirect_to '/admin/enquiries', notice: 'Enquiry deleted successfully'
  end

  private
  def set_enquiry
    @enquiry = Enquiry.find_by(id: params[:id])
    redirect_to '/admin/enquiries', notice: 'Invalid enquiry id' if @enquiry.blank?
  end
end