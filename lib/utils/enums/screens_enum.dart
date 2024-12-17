enum ScreensEnum {
  desktop,
  tablet,
  mobile;

  bool get isMobile => this == mobile;

  bool get isTablet => this == tablet;

  bool get isDesktop => this == desktop;

  double get maxWidth => switch (this) {
        mobile => 799,
        tablet => 1199,
        desktop => 0,
      };

  double get minWidth => switch (this) {
        mobile => 0,
        tablet => 800,
        desktop => 1200,
      };
}
