stuffed_str =
"""<dict>
  <key>io.flutter.embedded_views_preview</key>
  <true/>
  <key>NSCameraUsageDescription</key>
  <string>use camera</string>
  <key>NSPhotoLibraryUsageDescription</key>
  <string>use Photo Library</string>"""

runner_infoplist = '../flutter_app/.ios/Runner/info.plist'
original_content = File.read(runner_infoplist)

unless original_content.include?("io.flutter.embedded_views_preview")
  new_content = original_content.gsub("<dict>", stuffed_str)
  File.open(runner_infoplist, 'w') { |file| file.puts new_content }
end
