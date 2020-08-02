class AddAnswersBodyCorrectNullConstraint < ActiveRecord::Migration[6.0]
      def change
  	change_column_default(:answers, :correct, from: false, to: true)
  end
end
