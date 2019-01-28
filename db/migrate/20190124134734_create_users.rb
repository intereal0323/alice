class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
    # def liked?(topic)
    #   evaluations.where(target_type:topic.class, reputation_name: :like, target_id:topic.id).present?
    # end
  end
end
