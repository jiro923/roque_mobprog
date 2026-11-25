# flutter_application_2

A new Flutter project.

# Flutter Newsfeed Application

## Laboratory Discussion

**Question:** Discuss how you integrate the Image to the `newsfeed_card.dart` and make it dynamic—whether it has an image or not.

### Answer

To integrate images into `newsfeed_card.dart` and make them dynamic across different posts, the implementation was divided into three parts: asset registration, widget parameterization, and conditional rendering.

#### 1. Configuring Local Assets in `pubspec.yaml`
Before loading local images in Flutter, the asset directory must be registered in `pubspec.yaml` under the `flutter:` section (`assets/images/`). Storing all profile avatars (`kluwi.jpg`, `fukiko.jpg`) and post photos (`post.jpg`) inside `assets/images/` allows Flutter to bundle those files into the application at build time.

#### 2. Parameterizing `NewsfeedCard` (`lib/widgets/newsfeed_card.dart`)
Instead of hardcoding a single static image path inside `NewsfeedCard`, nullable fields were added to the stateless widget constructor:
- `final bool? hasImage;` — A boolean flag indicating whether a post includes an image attachment.
- `final String? postImage;` — An optional string path pointing to the specific image asset for that post.
- `final String? profileImage;` — An optional string path for each user's circular avatar (`CircleAvatar` with `AssetImage`).

Making these parameters optional (`?`) allows `NewsfeedScreen` (`lib/screens/newsfeed_screen.dart`) to pass different image paths per post or omit them completely for text-only posts.

#### 3. Conditional Rendering in the `build` Method
Inside `NewsfeedCard`'s `Column` layout, conditional logic checks whether an image was provided before building the widget:
- **When an image is present (`postImage != null` or `hasImage == true`):** Flutter renders an `Image.asset(...)` widget with `width: double.infinity` and `fit: BoxFit.cover` so the image spans the card width cleanly without distortion.
- **When no image is present (`null` or `false`):** The widget returns `const SizedBox.shrink()`, which occupies zero height and zero width. This prevents blank white gaps or layout errors on text-only posts, keeping the card spacing compact and consistent.