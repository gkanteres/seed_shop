Product.delete_all
Product.create! id: 1, category_id: 5, name: "Balsamroot", latin_name: "Balsamorhiza sagittata", description: "Small sunflower relative", price: 3.00, image: "/assets/balsamroot.jpg", active: true
Product.create! id: 2, category_id: 5, name: "Broad-Leaf Lupine", latin_name: "Lupinus latifolius", description: "Purple-blue lupine of Western US", price: 4.00, image: "/assets/lupine.jpg", active: true
Product.create! id: 3, category_id: 5, name: "Western Columbine", latin_name: "Aquilegia formosa", description: "Western native woodland wildflower", price: 5.00, image: "/assets/Western_Columbine.jpg", active: true

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"
