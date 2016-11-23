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

  def sub_link(link_text, link_project, current_project)
    class_name = link_project == current_project ? 'active' : ''
    content_tag(:li, :class => class_name) do
      link_to link_text, page_project_path(link_project)
    end
  end

end
