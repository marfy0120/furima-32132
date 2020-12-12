FactoryBot.define do
  factory :user_buy do
    prefecture_id          {1}
    yubin_number           {"010-1010"}
    city_number            {"aaaaa"}
    city                   {"aaaaa"}
    # building_name          {"0000000"}
    phone_number           {"00099990000"}
    token {"tok_abcdefghijk00000000000000000"}
    # user_id                 {1}
    # association :user
    # association :item
  end
end