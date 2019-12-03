module ApplicationHelper
  BOOTSTRAP_ALERTS = { 'notice' => 'alert-success', 'alert' => 'alert-danger' }.freeze
  DEFAULT_BOOTSTRAP_ALERT = 'alert-primary'.freeze

  def flash_message(type, msg)
    alert_type = BOOTSTRAP_ALERTS[type] || DEFAULT_BOOTSTRAP_ALERT
    content_tag :div, sanitize(msg, attributes: %w[href target]),
                class: "alert #{alert_type}"
  end
end
