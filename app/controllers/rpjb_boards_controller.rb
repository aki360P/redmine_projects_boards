  unloadable
  before_action :find_user, :find_project
  before_action :authorize


  def initialize
    super()
  end

  def index
    # find issues
    @rpjd_prj1 = Project.where("parent_id = ?", @project.id)
    @rpjd_prj2 = Project.where("parent_id = ?", @rpjd_prj1.ids)
    
    @rpjd_prj2_arry = []
    unless @rpjd_prj1.nil?
      @rpjd_prj1.each do |i|
        @rpjd_prj2_arry.push(Project.where("parent_id = ?", i.id).ids)
      end
    end
  end
  
  def show
  end

  def edit
  end
  
  def update
  end
  
  

  private

  def find_user
    @user = User.current
  end

  def find_project
    @project = Project.find(params[:project_id])
  rescue ActiveRecord::RecordNotFound
    render_404
  end
  
  
end
