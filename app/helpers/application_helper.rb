module ApplicationHelper
  def admin_types
    ['AdminUser']
  end

  def active?(path)
    'active' if current_page?(path)
  end

  def employee?
    current_user.type == 'Employee'
  end

  def admin?
    admin_types.include?(current_user.type)
  end

  def status_label(status)
    status_span_generator status
  end

  private

  def status_span_generator(status)
    case status
    when 'submitted'
      content_tag(:span, status.titleize, class: 'badge bg-primary')
    when 'approved'
      content_tag(:span, status.titleize, class: 'badge bg-success')
    when 'rejected'
      content_tag(:span, status.titleize, class: 'badge bg-danger')
    when 'pending'
      content_tag(:span, status.titleize, class: 'badge bg-primary')
    when 'confirmed'
      content_tag(:span, status.titleize, class: 'badge bg-success')
    end
  end
end
