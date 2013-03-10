class CreateDocuments < ActiveRecord::Migration
    def change
      create_table :documents, :primary_key => 'id_document' do |t|
        t.string :type

        t.timestamps
      end
    end
end
