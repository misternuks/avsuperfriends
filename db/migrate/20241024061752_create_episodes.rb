class CreateEpisodes < ActiveRecord::Migration[7.1]
  def change
    create_table :episodes do |t|
      t.string :title
      t.string :thumbnail
      t.string :preview_text
      t.text :description
      t.string :libsyn_embed_url
      t.timestamp :published_at

      t.timestamps
    end
  end
end
