class DashboardsController < ApplicationController
  layout 'new_design'

  def home
  end

  def about_us
  end

  def faq
  end

  def contact_us
    @enquiry = Enquiry.new
  end

  def web_design
  end

  def internet
  end

  def digital
  end

  def big_data
  end

  def services
  end

  def retail_cloud
  end

  def other_cloud
  end

  def backup_cloud
  end

  def cloud_solutions
  end

  def contact_message
    @enquiry = Enquiry.new(enquiry_params)
    @enquiry.save(validate: false)
    redirect_to contact_us_path, notice: "Message has been sent successfully"
  end

  def price_calculator
  end

  private
  def enquiry_params
    params.require(:enquiry).permit(:name, :email, :message, :subject, :phone)
  end
end
