class AddAuthorToPost < ActiveRecord::Migration
  def change
    add_reference :bugs, :author, index: true, foreign_key: true
  end
end
