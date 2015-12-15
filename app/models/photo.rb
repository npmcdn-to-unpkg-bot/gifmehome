class Photo < ActiveRecord::Base

  has_many :memes

  has_attached_file :image,
                    styles: { medium: "300x300>", thumb: "100x100>" },
                    default_url: "/images/:style/missing.png"
                    #processors: [:frame]

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
