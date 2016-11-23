module PressSectionsHelper
  def press_sub_link(link_text, link_press, current_press)
    class_name = link_press == current_press ? 'active' : ''
    content_tag(:li, :class => class_name) do
      link_to link_text, page_press_path(link_press.path)
    end
  end
end
