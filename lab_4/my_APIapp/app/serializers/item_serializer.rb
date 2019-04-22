class ItemSerializer < ActiveModel::Serializer
  attribute :name, key: :item_name
  attribute :description, key: :item_description

  
  def name
    object.name.upcase
  end 
  def description
    object.description.upcase
  end 
end
