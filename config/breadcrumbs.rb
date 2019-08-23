crumb :root do
  link "メルカリ", root_path
end

crumb :item_show do
  link "#{Item.find(params[:id]).name}", item_path
end

crumb :item_search do
  link "#{params[:search]}", search_items_path
end

crumb :mypage do
  link "マイページ", mypage_path
end

crumb :mypage_profile do 
  link "プロフィール", mypage_profile_path
  parent :mypage
end

crumb :mypage_card do 
  link "支払い方法", mypage_card_path
  parent :mypage
end

crumb :mypage_identification do 
  link "本人情報の登録", mypage_identification_path
  parent :mypage
end

crumb :mypage_logout do 
  link "ログアウト", mypage_logout_path
  parent :mypage
end
# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).