class ViewImage {

  final String image_name;

  ViewImage({this.image_name});

  static List<ViewImage> allImages() {
    var listOfImages = new List<ViewImage>();
    listOfImages.add(new ViewImage(
        image_name: 'https://images.ctfassets.net/hrltx12pl8hq/4plHDVeTkWuFMihxQnzBSb/aea2f06d675c3d710d095306e377382f/shutterstock_554314555_copy.jpg'));
    listOfImages.add(new ViewImage(
        image_name: 'https://images.ctfassets.net/hrltx12pl8hq/4plHDVeTkWuFMihxQnzBSb/aea2f06d675c3d710d095306e377382f/shutterstock_554314555_copy.jpg'));
    listOfImages.add(new ViewImage(
      image_name: "https://cdn.pixabay.com/photo/2014/02/27/16/10/tree-276014__340.jpg",));
    listOfImages.add(new ViewImage(
      image_name: "https://images.ctfassets.net/hrltx12pl8hq/4plHDVeTkWuFMihxQnzBSb/aea2f06d675c3d710d095306e377382f/shutterstock_554314555_copy.jpg",));
    listOfImages.add(new ViewImage(
      image_name: "https://images.ctfassets.net/hrltx12pl8hq/4plHDVeTkWuFMihxQnzBSb/aea2f06d675c3d710d095306e377382f/shutterstock_554314555_copy.jpg",));
    return listOfImages;
  }
}
