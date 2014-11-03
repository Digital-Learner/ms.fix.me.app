class Product < ActiveRecord::Base
  attr_accessible :description, :meta_description, :meta_keywords, :name, :published_status, :strapline, :subcode, :url_segment, :picture

  has_many :variants

  has_and_belongs_to_many :categories

  mount_uploader :picture, PictureUploader

  acts_as_publishable

  def self.random_best_sellers(number)
  	find(:all, :limit => number, :order => 'RAND()')
  end
end
