import Flutter

class FlutterEngineProvider {
  static let shared = FlutterEngineProvider()
  private let engine = FlutterEngine(name: "flutter_engine", project: nil)

  func startEngine() {
    engine?.run(withEntrypoint: nil)
  }

  func getEngine() -> FlutterEngine {
    return self.engine!
  }
}
