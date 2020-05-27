class AddPhotoToInstruments < ActiveRecord::Migration[6.0]
  def change
    add_column :instruments, :photo, :string
  end
end
