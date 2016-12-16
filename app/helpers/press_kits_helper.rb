module PressKitsHelper
  def file_link(press_kit)
    link_to press_kit.title, attachment_url(press_kit,
                                             :kit,
                                             filename: press_kit.kit_basename),
                                target: '_blank'
  end
end
