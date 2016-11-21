module ProjectsHelper
  def project_by_year input
    return input.group_by { |i| i.year.beginning_of_year }
  end
end
