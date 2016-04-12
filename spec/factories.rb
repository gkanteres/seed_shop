FactoryGirl.define do

  factory :user do
   username 'test_user'
   first_name 'Bob'
   last_name 'Dobbs'
   address '123 Main St'
   phone '555-5555'
   email 'test@example.com'
   password 'f4k3p455w0rd'
 end

 factory :admin do
   email 'test_admin@example.com'
   password 'adminpass'
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
    latin_name 'Testus Productii'
    description 'Test Description'
    price 5
    image 'test_image_url'
  end

  factory :tag do
    name 'Test Tag'
  end

end
