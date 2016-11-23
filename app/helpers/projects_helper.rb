module ProjectsHelper
  def project_by_year input
    return input.group_by { |i| i.year.beginning_of_year }
  end
  def project_sub_link(link_text, link_project, current_project)
    class_name = link_project == current_project ? 'active' : ''
    content_tag(:li, :class => class_name) do
      link_to link_text, page_project_path(link_project)
    end
  end
end
