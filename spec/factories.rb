FactoryGirl.define do

  factory :user do
   username 'test_user'
   email 'test@example.com'
   password 'f4k3p455w0rd'
 end

  factory :category do
    name 'Test Name'
    description 'Test Description'

    factory :category_with_product do
      after(:create) do |category|
        create(:product, category: category)
    end
  end
end

  factory :product do
    category_id 1
    name 'Test Product'
    description 'Test Description'
    price 5
    image 'test_image_url'
  end

end
