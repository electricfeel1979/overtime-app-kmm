class AuditLogsController < ApplicationController
    def index
      @audit_logs = AuditLog.page(params[:page]).per(10)
      authorize @audit_logs

      respond_to do |format|
        format.html
        format.js
      end
    end
end
