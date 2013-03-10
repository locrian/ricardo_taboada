class ChangeColumnNameInDocuments < ActiveRecord::Migration
  def up
    rename_column :documents, :type , :doc_type
  end

  def down
  end
end
