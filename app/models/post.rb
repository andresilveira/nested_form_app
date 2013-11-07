class Post < ActiveRecord::Base
  has_one :comment
  attr_accessible :content, :title, :comment_attributes
  accepts_nested_attributes_for :comment, allow_destroy: true, reject_if: proc { |obj| obj[:content].blank? }
  
end
