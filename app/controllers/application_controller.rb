class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :set_locale

  def set_locale
    user_locale = http_accept_language.compatible_language_from(I18n.available_locales)
    I18n.locale = params[:locale] || user_locale
  end
  def default_url_options
    { locale: I18n.locale }
  end
end
