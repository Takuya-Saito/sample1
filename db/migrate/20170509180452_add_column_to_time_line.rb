class AddColumnToTimeLine < ActiveRecord::Migration
  def change
    add_column :time_lines, :line_id, :integer
    add_column :time_lines, :line_type, :string
  end
end
