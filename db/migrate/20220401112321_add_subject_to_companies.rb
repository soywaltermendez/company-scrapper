class AddSubjectToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :subject, :string
  end
end
