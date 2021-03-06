class Magic::BaseController < ActionController::Base
  layout 'magic'
  before_filter :authenticate_admin!
  
  protected
  
  def title(title)
    @title = title
  end
  
  def navigation(identifier)
    @navigation_id = identifier
  end
end
