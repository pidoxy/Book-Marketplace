/// ============================[BASICALLY DEFINES PATHS TO IMAGE FOLDER]
enum ImagePath { usual, svg, png, gif, icons }

/// ============================[IMAGES]
String image(
  String imageName, {
  ImagePath imagePath = ImagePath.usual,
}) {
  /// ============================[DETERMINES PATH TO IMAGE FOLDER]
  String folderName = switch (imagePath) {
    ImagePath.svg => "svgs",
    ImagePath.png => "pngs",
    ImagePath.gif => "gifs",
    ImagePath.icons => "icons",
    _ => "images"
  };
  return 'assets/$folderName/$imageName.${folderName.contains("svg") ? "svg" : folderName.contains("gif") ? "gif" : folderName.contains("icon") ? "png" : "png"}';
}

/// ============================[CLASS OF ALL IMAGES]
class ImageOf {
  /// =====================================[App Logo]========================
  /// =====================================[App Logo]========================
  /// =====================================[App Logo]========================
  static String logo = image("logo");

  /// =====================================[SVG IMAGES]========================
  /// =====================================[SVG IMAGES]========================
  /// =====================================[SVG IMAGES]========================
  static String scannerIcon = image("scanner", imagePath: ImagePath.svg);

  /// =====================================[PNG IMAGES]========================
  /// =====================================[PNG IMAGES]========================
  /// =====================================[PNG IMAGES]========================
  static String homeNav = image("home_nav", imagePath: ImagePath.icons);
  static String scannerNav = image("scanner_nav", imagePath: ImagePath.icons);
  static String libraryNav = image("library_nav", imagePath: ImagePath.icons);
  static String pdfIcon = image("pdf_icon", imagePath: ImagePath.icons);
  static String imageIcon = image("image_icon", imagePath: ImagePath.icons);
  static String zipIcon = image("zip_icon", imagePath: ImagePath.icons);
}
