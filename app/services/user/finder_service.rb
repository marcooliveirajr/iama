class User
  class FinderService
    class << self
      def find(params)
        params = params.to_unsafe_h.symbolize_keys
        User.where("#{params[:type]} like ?", "%#{params[:text]}%").all
      end
    end
  end
end