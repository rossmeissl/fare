class Post < ActiveRecord::Base
#  extend Searchable(:content, :extended_content, :title)
  before_save :set_photo_url

  private

  def set_photo_url
    if flickr_url_changed? and flickr_url.present?
      self.photo_url = flickr.photos.getSizes(:photo_id => flickr_url.match(/\/photos\/capitalfare\/([\d]+)\//)[1])[4]['source']
    elsif flickr_url_changed?
      self.photo_url = nil
    end
  rescue FlickRaw::FailedResponse
    self.photo_url = nil
    self.flickr_url = nil
  end
end
