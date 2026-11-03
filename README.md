# HUSTLELINK starter

Foundation for the app: theme, MVVM structure, navigation, and the Swipe
screen running on fake data. Matches, Chat and Profile are placeholders.

## 1. Create the project and drop this in

    flutter create hustlelink --org com.hustlelink --platforms android,ios
    cd hustlelink
    flutter pub add provider go_router google_fonts

Then copy from this starter into the new project, replacing what is there:

- `lib/`  (replace the whole folder)
- `test/swipe_view_model_test.dart`  (and delete the default `test/widget_test.dart`)
- `.github/workflows/ci.yml`

Run it:

    flutter run

## 2. Put it on GitHub

Create an empty repo on GitHub (no README), then:

    git init
    git add .
    git commit -m "Initial Flutter project with theme, MVVM and swipe screen"
    git branch -M main
    git remote add origin https://github.com/<you>/hustlelink.git
    git push -u origin main

Suggested habits:
- Work on branches (`feature/swipe-gesture`, `feature/matches`) and open PRs.
- Protect `main` in Settings > Branches so CI must pass before merging.
- CI (`.github/workflows/ci.yml`) runs format check, analyze and tests.

## Structure

    lib/
      core/        theme, router, shared widgets
      data/        models, services (talk to the outside), repositories
      features/    one folder per screen: *_screen.dart + *_view_model.dart

Flow: Screen -> ViewModel -> Repository -> Service.

## Theming rules

- Raw colours only in `core/theme/app_palette.dart`.
- Widgets read `Theme.of(context).colorScheme` or `context.appColors`.
- Never hard-code `Color(0xFF...)` in a widget.
