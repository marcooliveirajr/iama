module AnesthetistsHelper
    
  def find_desc_anesthetists(id) 
    if id != nil
      Anesthetist.find(id).name
    end
  end
end
