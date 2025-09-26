enum AppFlavor { dev, staging, production }

class FlavorConfig {
  FlavorConfig({
    required this.baseUrl,
    required this.flavor,
    // Add other env-specific fields
  });
  final String baseUrl;
  final AppFlavor flavor;
  static late FlavorConfig shared;
  factory FlavorConfig.dev() {
    return FlavorConfig.shared = FlavorConfig(
      baseUrl: "https://dev-api.example.com",
      flavor: AppFlavor.dev,
    );
  }
  factory FlavorConfig.staging() {
    return FlavorConfig.shared = FlavorConfig(
      baseUrl: "https://staging-api.example.com",
      flavor: AppFlavor.staging,
    );
  }
  factory FlavorConfig.prod() {
    return FlavorConfig.shared = FlavorConfig(
      baseUrl: "https://api.example.com",
      flavor: AppFlavor.production,
    );
  }
}
