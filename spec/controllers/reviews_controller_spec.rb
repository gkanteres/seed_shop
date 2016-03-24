require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do
  it { should route('get', '/categories/1/products/1/reviews').to(action: :index, category_id: 1, product_id: 1)}
  it { should route('post', '/categories/1/products/1/reviews').to(action: :create, category_id: 1, product_id: 1)}
  it { should route('get', '/categories/1/products/1/reviews/new').to(action: :new, category_id: 1, product_id: 1)}
  it { should route('get', '/categories/1/products/1/reviews/1').to(action: :show, id: 1, category_id: 1, product_id: 1)}
  it { should route('get', '/categories/1/products/1/reviews/1/edit').to(action: :edit, id: 1, category_id: 1, product_id: 1)}
  it { should route('patch', '/categories/1/products/1/reviews/1').to(action: :update, id: 1, category_id: 1, product_id: 1)}
  it { should route('put', '/categories/1/products/1/reviews/1').to(action: :update, id: 1, category_id: 1, product_id: 1)}
  it { should route('delete', '/categories/1/products/1/reviews/1').to(action: :destroy, id: 1, category_id: 1, product_id: 1)}
end
