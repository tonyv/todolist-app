class RemoveListNameFromTask < ActiveRecord::Migration
	def change
		remove_column :tasks, :list_name
	end
end
