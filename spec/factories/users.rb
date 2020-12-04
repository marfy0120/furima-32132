FactoryBot.define do
  factory :user do
    nickname              {"test"}
    email                 {"test@example"}
    password              {"00000a"}
    password_confirmation {password}
    family_name           {"田中"}
    farst_name            {"太郎"}
    family_name_kana      {"タナカ"}
    farst_name_kana       {"タロウ"}
    birthday              {"1995-05-08"}
  end
end