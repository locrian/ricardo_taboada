class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas, :primary_key => 'id_agenda' do |t|
      t.date :start_date
      t.date :end_date
      t.text :tasks

      t.timestamps
    end
  end
end
