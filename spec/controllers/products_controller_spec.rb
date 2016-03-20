require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  it { should route('get', '/categories/1/products').to(action: :index, category_id: 1)}
  it { should route('post', '/categories/1/products').to(action: :create, category_id: 1)}
  it { should route('get', '/categories/1/products/new').to(action: :new, category_id: 1)}
  it { should route('get', '/categories/1/products/1').to(action: :show, id: 1, category_id: 1)}
  it { should route('get', '/categories/1/products/1/edit').to(action: :edit, id: 1, category_id: 1)}
  it { should route('patch', '/categories/1/products/1').to(action: :update, id: 1, category_id: 1)}
  it { should route('put', '/categories/1/products/1').to(action: :update, id: 1, category_id: 1)}
  it { should route('delete', '/categories/1/products/1').to(action: :destroy, id: 1, category_id: 1)}
end
