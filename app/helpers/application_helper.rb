module ApplicationHelper
  
  def flash_messages
    text = ""
    flash.each do |key, value|
      text += content_tag :div, :class => :alert do
        link_to("x", "#", :class => "close", :"data-dismiss" => "alert" ) + value
      end
    end
    raw text
  end
end
