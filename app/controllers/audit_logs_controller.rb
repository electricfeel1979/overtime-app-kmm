class AuditLogsController < ApplicationController
  def index
    @audit_logs = AuditLog.page(params[:page]).per(10)
    authorize @audit_logs

    respond_to do |format|
      format.html
      format.js
    end
  end

  def confirm
    audit_log = AuditLog.find(params[:id])
    authorize audit_log
    audit_log.confirmed!
    redirect_to root_path, notice: "Thank you, your confirmation has been successfully made."
  end
end
