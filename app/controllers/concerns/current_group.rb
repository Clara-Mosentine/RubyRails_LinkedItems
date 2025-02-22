module current_group
  private
    def set_group
      @texture_group = texture_group.find(session[:group_id])
    rescue ActiveRecord::RecordNotFound
      @texture_group = texture_group.create
      session[:group_id] = @texture_group.id
    end
end