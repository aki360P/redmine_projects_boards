require 'redmine'

Redmine::Plugin.register :redmine_projects_boards do
  name 'Redmine project board plugin'
  author 'Akinori Iwasaki'
  description 'View project boards with all project customfields'
  version '0.1.0'
  url 'https://github.com/aki360P/redmine_projects_boards'
  
  project_module :redmine_projects_boards do
    permission :rpjb_view, :rpjb_boards => [:index, :show]
    permission :rpjb_setting, :rpjb_settings => [:edit]
  end
  
  
  # add tab - project module
  menu :project_menu, :rpjb_boards, {:controller => 'rpjb_boards', :action => 'index' }, :caption => :label_rpjb, :param => :project_id
  
  
  # setting
  settings  partial: 'rpjb_global_settings/show',
            default: {
              'rpbd_cf1' => '1'
               }
end