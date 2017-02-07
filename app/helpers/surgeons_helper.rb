module SurgeonsHelper
    
  def find_desc_surgeon(id) 
    if id != nil
      Surgeon.find(id).name
    end
  end
end
