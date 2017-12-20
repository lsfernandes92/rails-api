class Image
  include Mongoid::Document
  field :url, type: String
  field :size, type: Array

  # rake db:mongoid:create_indexes
  index({ url: 1 }, { unique: true, name: 'url_index' })

  validates_uniqueness_of :url

  def set_vals
    self.size = [
      'small'  => { width: 320, height: 240 },
      'medium' => { width: 384, height: 288 },
      'large'  => { width: 640, height: 480 }
    ]
    save
  end
end
