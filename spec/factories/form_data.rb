FactoryBot.define do
  factory :form_data do
    # フォームのフィールドに合わせた属性を定義します
    month  { 1 }
    weekdays { 4000 }
    weekends { 6000 }
    holidays { 5 }
  end
end