class AddCostToClassSession < ActiveRecord::Migration
  def change
    add_column :class_sections, :cost_in_cents, :integer
    add_column :class_sections, :published_at, :datetime
  end
end
