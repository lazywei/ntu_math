class News < ActiveRecord::Base
  attr_accessible :content, :title
  auto_html_for :content do 
    html_escape
    image
    youtube(:width => 400, :height => 250)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end
end
