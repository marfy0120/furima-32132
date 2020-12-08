FactoryBot.define do
  factory :item do
    category_id          {1}
    cost_id               {1}
    day_id                {1}
    price              {500}
    description           {"aaaaaa"}
    status_id            {1}
    prefecture_id      {1}
    product_name       {"aaaaaa"}
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
