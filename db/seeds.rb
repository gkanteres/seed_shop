Category.delete_all
Category.create! id: 1, name: "Wildflowers", description: "Low-maintenance annuals and perennials"
Category.create! id: 2, name: "Culinary Herbs", description: "Herbs for the kitchen"
Category.create! id: 3, name: "Heirloom Vegetables", description: "Heirloom varieties of all your favorite garden vegetables"

Product.delete_all
Product.create! id: 1, category_id: 1, name: "Balsamroot", latin_name: "Balsamorhiza sagittata", description: "Small sunflower relative", price: 3.00, image: "/assets/balsamroot.jpg", active: true
Product.create! id: 2, category_id: 1, name: "Broad-Leaf Lupine", latin_name: "Lupinus latifolius", description: "Purple-blue lupine of Western US", price: 4.00, image: "/assets/lupine.jpg", active: true
Product.create! id: 3, category_id: 1, name: "Western Columbine", latin_name: "Aquilegia formosa", description: "Western native woodland wildflower", price: 5.00, image: "/assets/Western_Columbine.jpg", active: true

Tag.delete_all
Tag.create! id: 1, name: "Nectary"
Tag.create! id: 2, name: "Dynamic Accumulator"
Tag.create! id: 3, name: "Native"
Tag.create! id: 4, name: "Edible"
Tag.create! id: 5, name: "Medicinal"
Tag.create! id: 6, name: "Showy"
