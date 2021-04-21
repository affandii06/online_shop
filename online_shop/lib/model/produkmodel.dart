class ModelProduk {
  List sneakers = [
    {'id' : '1' ,'label': 'Jordan Air Max 200 XX', 'price': '240', 'rating': '4','image': 'assets/image/produk/jordan11.jpg'},
    {'id' : '2' ,'label': 'Jordan MA 2', 'price': '270', 'rating': '4','image': 'assets/image/produk/jordan21.jpg'},
    {'id' : '3' ,'label': 'Jordan Air Cadence', 'price': '255', 'rating': '4', 'image': 'assets/image/produk/jordan31.jpg'},
    {'id' : '4' ,'label': 'Jordan Aerospace 720 JCRD', 'price': '288', 'rating': '4', 'image': 'assets/image/produk/jordan41.jpg'},
  ];

  List watch= new List();
  List backpack= new List();

  Map<String, Object> detailsneakers1 = {
    'id' : '1',
    'label' : 'Jordan Air Max 200 XX',
    'price' : '240',
    'rating' : '4',
    'size' : [
      {'id': '1', 'size' : 'US 6'},
      {'id': '1', 'size' : 'US 7'},
      {'id': '1', 'size' : 'US 8'},
      {'id': '1', 'size' : 'US 9'},
    ],
    'color' : [
      {'id' : '1', 'color': 'cream'},
      {'id' : '2', 'color': 'putih'},
      {'id' : '3', 'color': 'pink'},
      {'id' : '4', 'color': 'hijau'},
    ],
    'deskripsi' : 'Build for natural motion, with Nike Flex Shoes',
    'image' : [
      {'id' : '1', 'idcolor': '1', 'image': 'assets/image/produk/jordan11.jpg'},
      {'id' : '2', 'idcolor': '2', 'image': 'assets/image/produk/jordan12.jpg'},
      {'id' : '3', 'idcolor': '3', 'image': 'assets/image/produk/jordan13.jpg'},
      {'id' : '4', 'idcolor': '4', 'image': 'assets/image/produk/jordan14.jpg'},
    ]
  };

  Map<String, Object> detailsneakers2 = {
    'id' : '2',
    'label' : 'Jordan MA 2',
    'price' : '270',
    'rating' : '4',
    'size' : [
      {'id': '1', 'size' : 'US 6'},
      {'id': '1', 'size' : 'US 7'},
      {'id': '1', 'size' : 'US 8'},
    ],
    'color' : [
      {'id' : '1', 'color': 'merah'},
      {'id' : '2', 'color': 'hitam'},
      {'id' : '3', 'color': 'ungu'},
    ],
    'deskripsi' : 'Build for natural motion, with Nike Flex Shoes',
    'image' : [
      {'id' : '1', 'idcolor': '1', 'image': 'assets/image/produk/jordan21.jpg'},
      {'id' : '2', 'idcolor': '2', 'image': 'assets/image/produk/jordan22.jpg'},
      {'id' : '3', 'idcolor': '3', 'image': 'assets/image/produk/jordan23.jpg'},
    ]
  };

  Map<String, Object> detailsneakers3 = {
    'id' : '3',
    'label' : 'Jordan Air Cadence',
    'price' : '255',
    'rating' : '4',
    'size' : [
      {'id': '1', 'size' : 'US 6'},
      {'id': '1', 'size' : 'US 7'},
      {'id': '1', 'size' : 'US 8'},
    ],
    'color' : [
      {'id' : '1', 'color': 'abuabu'},
      {'id' : '2', 'color': 'hitam'},
      {'id' : '3', 'color': 'merah'},
    ],
    'deskripsi' : 'Build for natural motion, with Nike Flex Shoes',
    'image' : [
      {'id' : '1', 'idcolor': '1', 'image': 'assets/image/produk/jordan31.jpg'},
      {'id' : '2', 'idcolor': '2', 'image': 'assets/image/produk/jordan32.jpg'},
      {'id' : '3', 'idcolor': '3', 'image': 'assets/image/produk/jordan33.jpg'},
    ]
  };

  Map<String, Object> detailsneakers4 = {
    'id' : '4',
    'label' : 'Jordan Aerospace 720 JCRD',
    'price' : '288',
    'rating' : '4',
    'size' : [
      {'id': '1', 'size' : 'US 6'},
      {'id': '1', 'size' : 'US 7'},
      {'id': '1', 'size' : 'US 8'},
    ],
    'color' : [
      {'id' : '1', 'color': 'hitam'},
      {'id' : '2', 'color': 'merah'},
      {'id' : '3', 'color': 'putih'},
    ],
    'deskripsi' : 'Build for natural motion, with Nike Flex Shoes',
    'image' : [
      {'id' : '1', 'idcolor': '1', 'image': 'assets/image/produk/jordan41.jpg'},
      {'id' : '2', 'idcolor': '2', 'image': 'assets/image/produk/jordan42.jpg'},
      {'id' : '3', 'idcolor': '3', 'image': 'assets/image/produk/jordan43.jpg'},
    ]
  };
}
