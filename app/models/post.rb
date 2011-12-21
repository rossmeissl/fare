require 'texticle/searchable'

class Post < ActiveRecord::Base
  extend Searchable(:title, :content, :extended_content)

  default_scope :order => 'created_at DESC'

  before_save :set_photo_url

  acts_as_gmappable :lat => 'lat', :lng => 'long', :address => 'address', :check_process => true, :checker => :prevent_geocode?

  def prevent_geocode?
    address.blank?
  end

  private

  def set_photo_url
    if flickr_url_changed? and flickr_url.present? and flickr_url =~ /^http:\/\/www\.flickr\.com\/photos\/capitalfare\/[\d]+/
      self.photo_url = flickr.photos.getSizes(:photo_id => flickr_url.match(/\/photos\/capitalfare\/([\d]+)\//)[1])[4]['source']
    elsif flickr_url_changed?
      self.photo_url = nil
    end
  rescue FlickRaw::FailedResponse
    self.photo_url = nil
    self.flickr_url = nil
  end
end
