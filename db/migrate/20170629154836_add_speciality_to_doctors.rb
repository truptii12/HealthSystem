class AddSpecialityToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :speciality, :string
  end
end
