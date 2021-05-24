# Supplier.create!([
#   {name: "Black Diamond", email: "blackdiamond@bd.com", phone_number: "789-455-8552"},
#   {name: "Backcountry", email: "orders@backcountry.com", phone_number: "445-887-1224"},
#   {name: "Mammut", email: "climbing@mammut.com", phone_number: "303-887-1244"},
#   {name: "Metolius", email: "products@metolius.com", phone_number: "779-745-9633"},
#   {name: "Trango", email: "products@trango.com", phone_number: "888-745-1422"},
#   {name: "FiveTen", email: "fiveten@adidas.com", phone_number: "445-898-3356"},
#   {name: "Wild Country", email: "products@wildcountry.com", phone_number: "455-365-8898"},
#   {name: "Edelrid", email: "orders@eldelrid.com", phone_number: "887-987-5544"},
#   {name: "Petzl", email: "petzlisdope@petzl.com", phone_number: "554-233-6687"}
# ])
# Product.create!([
#   {name: "Mammut Crag Dry Rope 9.5", price: "280.0", description: "rope, pink, 70m", in_stock: true, inventory: 10, supplier_id: 3},
#   {name: "Mammut Dyneema Contact Sling 60cm", price: "8.95", description: "sling, red, 8mm", in_stock: true, inventory: 10, supplier_id: 3},
#   {name: "Mammut Dyneema Contact Sling 120cm", price: "14.95", description: "sling, blue, 8mm", in_stock: true, inventory: 10, supplier_id: 3},
#   {name: "Backcountry x So iLL All Chalk No Action Hangboard", price: "115.0", description: "hangboard", in_stock: true, inventory: 10, supplier_id: 2},
#   {name: "Metolius Personal Anchor System", price: "33.95", description: "PAS", in_stock: true, inventory: 10, supplier_id: 5},
#   {name: "Trango Beta Stick", price: "75.0", description: "stick clip", in_stock: true, inventory: 10, supplier_id: 4},
#   {name: "Wild Country Ropeman", price: "44.95", description: "ascender", in_stock: true, inventory: 10, supplier_id: 8},
#   {name: "Edelrid Tommy Caldwell Eco Dry Colortec Rope 9.3", price: "339.95", description: "rope, pink/turquoise, 70m", in_stock: true, inventory: 10, supplier_id: 9},
#   {name: "Fivetennie Approach Shoe", price: "88.0", description: "approach shoe", in_stock: true, inventory: 10, supplier_id: 7},
#   {name: "Petzl Grigri", price: "100.0", description: "belay device", in_stock: true, inventory: 10, supplier_id: 10},
#   {name: "BD Vision Helmet", price: "100.0", description: "helmet", in_stock: true, inventory: 10, supplier_id: 1},
#   {name: "BD Mojo Zip Chalk Bag", price: "15.0", description: "chalk bag", in_stock: true, inventory: 10, supplier_id: 1},
#   {name: "BD Solution Harness", price: "75.0", description: "harness", in_stock: true, inventory: 10, supplier_id: 1},
#   {name: "BD HotForge Hybrid Quickdraw", price: "18.0", description: "quickdraw", in_stock: true, inventory: 10, supplier_id: 1},
#   {name: "BD Camalot Z4 0.75", price: "70.0", description: "cam", in_stock: true, inventory: 10, supplier_id: 1},
#   {name: "BD Forearm Trainer", price: "7.95", description: "forearm trainer, warm-up tool", in_stock: true, inventory: 10, supplier_id: 1}
# ])
# Image.create!([
#   {url: "https://content.backcountry.com/images/items/900/BLD/BLDZ97J/STOBLU.jpg", product_id: 8},
#   {url: "https://content.backcountry.com/images/items/900/BLD/BLDZ9EO/ASTBLU.jpg", product_id: 7},
#   {url: "https://content.backcountry.com/images/items/900/BLD/BLD00I0/BLA.jpg", product_id: 4},
#   {url: "https://content.backcountry.com/images/items/900/TRG/TRG000S/COMGRE.jpg", product_id: 10},
#   {url: "https://content.backcountry.com/images/items/900/BCC/BCCZ21L/BURBRI.jpg", product_id: 9},
#   {url: "https://content.backcountry.com/images/items/900/FVT/FVT004A/NTCAROR.jpg", product_id: 11},
#   {url: "https://content.backcountry.com/images/items/900/PTZ/PTZ008V/BL.jpg", product_id: 6},
#   {url: "https://content.backcountry.com/images/items/900/MAM/MAMU51G/PINZEN.jpg", product_id: 1},
#   {url: "https://content.backcountry.com/images/items/900/BLD/BLDZ96U/ULTPIN.jpg", product_id: 2},
#   {url: "https://content.backcountry.com/images/items/900/BLD/BLDZ97M/S075.jpg", product_id: 3},
#   {url: "https://content.backcountry.com/images/items/900/WDC/WDC000P/OR.jpg", product_id: 16},
#   {url: "https://content.backcountry.com/images/items/900/BLD/BLDZ97J/TUN.jpg", product_id: 8},
#   {url: "https://content.backcountry.com/images/items/900/MAM/MAMU51G/BLUOCE_D3.jpg", product_id: 1},
#   {url: "https://content.backcountry.com/images/items/900/BLD/BLD1021/FTBLU.jpg", product_id: 26},
#   {url: "https://content.backcountry.com/images/items/900/BLD/BLD1021/FTBLU_D1.jpg", product_id: 26},
#   {url: "https://content.backcountry.com/images/items/900/MAM/MAM002X/BL.jpg", product_id: 24},
#   {url: "https://content.backcountry.com/images/items/900/MAM/MAM002X/RD.jpg", product_id: 25},
#   {url: "https://content.backcountry.com/images/items/900/MET/MET0362/BLU.jpg", product_id: 22},
#   {url: "https://content.backcountry.com/images/items/900/ELR/ELRC04L/PINTUR.jpg", product_id: 23}
# ])

Category.create!([
  {name: "Ropes"},
  {name: "Protection"},
  {name: "Footwear"},
  {name: "Training"}
]
)
