class AddThumbnailUriToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :thumbnail_uri, :string
  end
end
