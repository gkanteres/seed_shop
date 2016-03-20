require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  it { should route('get', '/').to(action: :index)}
  it { should route('post', '/categories').to(action: :create)}
  it { should route('get', '/categories/new').to(action: :new)}
  it { should route('get', '/categories/1').to(action: :show, id: 1)}
  it { should route('get', '/categories/1/edit').to(action: :edit, id: 1)}
  it { should route('patch', '/categories/1').to(action: :update, id: 1)}
  it { should route('put', '/categories/1').to(action: :update, id: 1)}
  it { should route('delete', '/categories/1').to(action: :destroy, id: 1)}
end
