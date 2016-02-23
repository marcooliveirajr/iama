class NoauthController < NoauthApplicationController
  def list_duties
    set_on_duty
    render 'on_duties/list'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_on_duty
    @on_duties= OnDuty.all
  end
end
