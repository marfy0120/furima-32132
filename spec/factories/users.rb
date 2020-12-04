FactoryBot.define do
  factory :user do
    nickname              {"test"}
    email                 {"test@example"}
    password              {"000000"}
    password_confirmation {password}
    family_name           {"田中"}
    farst_name            {"太郎"}
    family_name_kana      {"タナカ"}
    farst_name_kana       {"タロウ"}
    birthday              {"0000-00-00"}
  end
end