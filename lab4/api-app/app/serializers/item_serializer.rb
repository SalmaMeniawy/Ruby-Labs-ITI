class ItemSerializer < ActiveModel::Serializer
  attributes  :item_name , :item_descreption
  
  def item_name
    object.name.upcase
  end


  def item_descreption
    object.description.upcase
  end
end
