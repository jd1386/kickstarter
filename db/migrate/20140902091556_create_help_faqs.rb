class CreateHelpFaqs < ActiveRecord::Migration
  def change
    create_table :help_faqs do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
