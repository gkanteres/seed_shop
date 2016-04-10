require 'rails_helper'

RSpec.describe OrderItemsController, type: :controller do
  it { should route('post', '/order_items').to(action: :create)}
  it { should route('patch', '/order_items/1').to(action: :update, id: 1)}
end
