class CategoryModel {
  final String name;
  final int index;

  CategoryModel({
    required this.index,
    required this.name,
  });
}

List<CategoryModel> categoryList = [
  CategoryModel(index: 0, name: "All"),
  CategoryModel(index: 1, name: "Indoor"),
  CategoryModel(index: 2, name: "Outdoor"),
  CategoryModel(index: 3, name: "Cactus"),
  CategoryModel(index: 4, name: "Rose"),
];



class ProductModel {
  final String plantname;
  final String image;
  final String price;
  final String discription;
  final String rating;
  final int categoryId;

  ProductModel({
    required this.plantname,
    required this.image,
    required this.price,
    required this.discription,
    required this.rating,
    required this.categoryId,
  });
}

List<ProductModel> productAll = [
  ProductModel(
    plantname: "Jade Plant",
    image: "assets/onee.png",
    price: "\$40.00",
    discription:
        "The jade plant is an evergreen with thick branches. It has thick, shiny, smooth leaves that grow in opposing pairs along the branches. Leaves are a rich jade green, although some may appear to be more of a yellow-green.",
    rating: "4.9",
    categoryId: 1,
  ),
  ProductModel(
    plantname: "Cactus",
    image: "assets/two.png",
    price: " \$23.00",
    discription:
        "The jade plant is an evergreen with thick branches. It has thick, shiny, smooth leaves that grow in opposing pairs along the branches. Leaves are a rich jade green, although some may appear to be more of a yellow-green.",
    rating: "4.9",
    categoryId: 2,
  ),
  ProductModel(
    plantname: "philodendron",
    image: "assets/three.png",
    price: "\$30.00",
    discription:
        "The jade plant is an evergreen with thick branches. It has thick, shiny, smooth leaves that grow in opposing pairs along the branches. Leaves are a rich jade green, although some may appear to be more of a yellow-green.",
    rating: "4.9",
    categoryId: 3,
  ),
  ProductModel(
    plantname: "Monstera",
    image: "assets/four.png",
    price: "\$35.00",
    discription:
        "The jade plant is an evergreen with thick branches. It has thick, shiny, smooth leaves that grow in opposing pairs along the branches. Leaves are a rich jade green, although some may appear to be more of a yellow-green.",
    rating: "4.9",
    categoryId: 4,
  ),
  ProductModel(
    plantname: "Rose",
    image: "assets/four.png",
    price: "\$73.00",
    discription:
        "The jade plant is an evergreen with thick branches. It has thick, shiny, smooth leaves that grow in opposing pairs along the branches. Leaves are a rich jade green, although some may appear to be more of a yellow-green.",
    rating: "4.9",
    categoryId: 3,
  ),
  ProductModel(
    plantname: "Neem",
    image: "assets/four.png",
    price: "\$33.00",
    discription:
        "The jade plant is an evergreen with thick branches. It has thick, shiny, smooth leaves that grow in opposing pairs along the branches. Leaves are a rich jade green, although some may appear to be more of a yellow-green.",
    rating: "4.9",
    categoryId: 2,
  ),
  ProductModel(
    plantname: "Rose",
    image: "assets/four.png",
    price: "\$53.00",
    discription:
        "The jade plant is an evergreen with thick branches. It has thick, shiny, smooth leaves that grow in opposing pairs along the branches. Leaves are a rich jade green, although some may appear to be more of a yellow-green.",
    rating: "4.9",
    categoryId: 3,
  ),
];
