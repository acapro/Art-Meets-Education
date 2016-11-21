module ApplicationHelper

  def nav_link(link_text, link_path, options = {})
    if options[:action]
      class_name = params[:action] == options[:action] ? 'active' : ''
    else
      class_name = ''
    end
    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end

end
