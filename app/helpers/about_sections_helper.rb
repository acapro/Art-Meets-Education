module AboutSectionsHelper
  def about_sub_link(link_text, link_about, current_about)
    class_name = link_about == current_about ? 'active' : ''
    content_tag(:li, :class => class_name) do
      link_to link_text, page_about_path(link_about.path)
    end
  end
end
