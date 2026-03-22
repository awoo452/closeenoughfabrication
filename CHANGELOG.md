# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.14] - 2026-03-22
### Added
- Added binstubs for Brakeman and RuboCop to support CI checks.

## [1.0.13] - 2026-03-21
### Changed
- Standardized CI checks to include security scans, linting, tests, and system tests.

## [1.0.12] - 2026-03-21
### Changed
- Standardized README sections to the shared format.

## [1.0.11] - 2026-03-21
### Changed
- Standardized changelog dates to YYYY-MM-DD.

## [1.0.10] - 2026-03-21
### Changed
- Standardized legal pages on JSON-backed content and added the Accessibility page.

## [1.0.9] - 2026-03-20
### Added
- Added controller coverage for docs and legal pages.
- Added model coverage for JSON-backed projects and video embed logic.
- Added a home page system smoke test.
### Fixed
- Adjusted missing-doc expectation when ActiveRecord is not loaded.

## [1.0.8] - 2026-03-20
### Fixed
- Updated controller tests to use the current route helpers and existing records.

## [1.0.7] - 2026-03-20
### Changed
- CI runs `bin/rails test` and `bin/rails test:system` without database tasks since Active Record is not loaded.

## [1.0.6] - 2026-03-20
### Added
- Added GitHub Actions CI to run unit and system tests.
### Changed
- Run system tests unconditionally in CI to avoid workflow file parsing issues.
- Use the rack test driver for system tests to avoid selenium setup issues.
### Fixed
- Ensured user fixtures include unique emails to satisfy database constraints.

## [1.0.5] - 2026-03-19
### Changed
- Guarded Active Storage variant configuration when Active Storage is not loaded.

## [1.0.4] - 2026-03-19
### Changed
- Disabled Active Storage variant processing to suppress image_processing warnings.
- Upgraded Puma to 7.2.0 and refreshed Gemfile.lock.

## [1.0.3] - 2026-03-19
### Changed
- Refreshed Gemfile.lock via bundle update for Ruby 4.0.2.

## [1.0.2] - 2026-03-19
### Changed
- Pinned Ruby to 4.0.2 across runtime files and Gemfile.lock.

## [1.0.1] - 2026-03-18

### Changed
- Removed internal doc metadata (category/status/audience/tags) from public doc headers.

## [1.0.0] - 2026-03-18

### Added
- Public documentation section backed by `docs/docs.json` using the shared docs schema.
- Shared docs index and detail layout to match the documentation baseline.

### Changed
- Navigation updated with a Docs link.
- Docs media proxying now only runs when `IMAGE_PROXY_BASE_URL` and `IMAGE_PROXY_SIGNING_KEY` are set (AWS/S3 fallback disabled for now).
- Docs pages now use the same centered layout and card styling as the rest of the site.
- Styled the docs search bar to match the site spacing and controls.
- Centered docs index header/category text and fixed pluralization for doc counts.

## [x.x.x] - 2026-03-06
### Removed
- Stuff that should never have been added in the first place as part of our 'migration'
- U can lead chat to water but u can't make it think

## [x.x.x] - 2026-03-06
### Removed
- Dropped unused project views (`projects/new`, `projects/edit`).
- Removed unused images: `blog1.png`, `falcon2.jpg`, `image1.png`, `image2.png`, `image3.png`, `logo.png`, `project3.jpg`.

## [x.x.x] - 2026-02-24
### Changed
- Pinned Ruby to 4.0.1 and Rails to 8.1.2 (aligned with getawd).

## [x.x.x] - 2026-02-24
### Added
- Static project data at `config/projects.json`.
- Static video data at `config/videos.json`.

### Changed
- Removed database/Devise dependencies and ActiveRecord wiring.
- Dropped blog posts and tasks from the app.
- Simplified routes, controllers, and views to read-only projects/videos.

## [x.x.x] - 2026-02-22
### Added
- idk

## [x.x.x] - 2026-02-22
### Added
- Terms of Use and Privacy Policy pages.
- LICENSE file.

### Changed
- Footer now links to Terms and Privacy.
- README updated with project overview and setup.

## [x.x.x] - 2026-02-05
### Changed
- Enforced global box-sizing and max-width safeguards for media to prevent overflow.

## [x.x.x] - 2026-02-05
### Added
- Video show page with card click-through (outside the iframe) to open it.

### Changed
- Styled the video show layout to match other show pages.
- Prevented show layouts and media from overflowing the viewport width.

## [x.x.x] - 2026-02-05
### Changed
- Hide featured sections on the home page when there is no content to display.
- Truncated project titles and descriptions on the projects index view.
- Applied the same title/description truncation rules to blog post cards.
- Applied the same title/description truncation rules to video cards.

## [x.x.x] - 2026-02-05
### Changed
- Refactored home, blog post, project, and video views into reusable card partials.
- Cleaned up HTML structure and removed inline styling.
- Updated base card/list styling to match the new markup.
- Standardized layout and card styling with shared variables, sizing, and spacing tweaks.
- Removed `hr` separators from home and nav layout and dropped related styles.

## [x.x.x] - 2026-01-24
### Changed
- Extracted controller logic into service objects to standardize flows across the app.
- Added domain-scoped services for data loading and CRUD operations to slim controllers.

## [x.x.x] - 2026-01-22
### Changed
- It's not 2025 anymore u dillo

## [x.x.x] - 2026-01-22
### Removed
- Email from contact page, getting spam lol

## [x.x.x] - 2025-10-03
### Added
- project5.png
    - New image for minibike project

## [x.x.x] - 2025-02-27
### Changed
- project4.png
    - Updated image for this project

## [x.x.x] - 2025-02-17
### Create Blog Post from Front End, auth before doing so (for projects too)

### Added
- blog_posts/new, edit.html.erb

### Changed
- blog_posts_controller.rb
    - copy / pasting from projects controller for updating, same logic applies
- routes.rb
    - converting blog_posts to resource altogether
- nav.html.erb
    - link to new blog_post if signed in
- Other blog post related HTML / SCSS for styling

### Changed
- blog_posts/show.html.erb
    - Closing that div

## [x.x.x] - 2025-02-17
### Quick Fix

### Changed
- blog_posts/show.html.erb
    - Closing that div

## [x.x.x] - 2025-02-17
### Footer

### Added
- layouts/_footer.html.erb

### Changed
- _footer.html.erb
    - Added some starter content
- layouts/application.html.erb
    - Added the footer
- stylesheets/application.scss
    - Styling for footer

## [x.x.x] - 2025-02-17
### Project, Blog Post Cleanup

### Changed
- projects/show.html.erb, blog_posts/show.html.erb,
    - Removing unnecessary bloat
    - More accurately describing links
    - Link to 'see more' on project show if url present
- home/index.html.erb
    - Centering subheading

## [x.x.x] - 2025-02-16
### Image sizing

### Changed
- project4.png
    - correct sizing

## [x.x.x] - 2025-02-11
### Project front end cleanup

### Changed
- projects/show.html.erb
    - Wrapping in 'project' class
    - showing actual image on front end

## [x.x.x] - 2025-02-11
### New project post for 55 cage

### Added
- project4.png

### Changed
- projects/show.html.erb
    - Removing unnecessary fields from front end

## [x.x.x] - 2024-11-16
### Admin Section | Devise | Create new Projects

### Added
- projects/new.html.erb
- projects/form.html.erb

### Changed
- _nav.html.erb
    - check for user signed in before allowing creation of new project
- development.rb
    - Related to devise implementation
- migration files
    - Related to approving users
- user.rb model
    - To prevent user from adding approved to their own account

## [x.x.x] - 2024-11-16
### Good update, shitty highway

### Changed
- application.scss
    - Mobile support

## [x.x.x] - 2024-11-10
### Addressing some initial concerns

### Added
- projects/show.html.erb

### Changed
- application.scss
    - Mobile support

## [x.x.x] - 2024-11-09
### You get on Heroku, Front End Cleanup
### https://devcenter.heroku.com/articles/getting-started-with-rails7#create-a-new-or-upgrade-an-existing-rails-app

### Added
- Procfile

### Changed
- Procfile
    - https://devcenter.heroku.com/articles/procfile
- seeds/projects.rb
    - Updated some data about the Maverick
- application.scss
    - Updated to more accurately reference and display content as necessary
- home/index.html.erb
    - Featured sections cleaned up
- Other views also cleaned up to properly display content
-

### Removed
- video show file serves no purpose

## [x.x.x] - 2024-11-09
###

### Changed
- database.yml
    - Typo lol
- blog/show.html.erb
    - Getting rid of img src in favor of something created this century
- application.scss
    - border radius on images
- removing some other unnecessary bloat from related files (things like 'blog' as a heading, etc)

## [x.x.x] - 2024-11-09
### Adding site content, other minor updates to front end

### Added
- project2.png
- project3.png

### Changed
- seeds.rb
    - Other projects (project2, project3) to seed file for starter material
- index.html.erb
    - Updated to reflect Article instead of Blog
- _nav.html.erb
    - Referenced News & Events instead of Blog

## [x.x.x] - 2024-11-02
### Makadafrontendgood

### Added
- _project.html.erb

### Changed
- application.html.erb
    - googleapis font links
- application.scss
    - Referenced googleapis fonts
    - Other front end changes to makadafrontendgood
- application_controller.rb
    - Added relevant homepage content
- /seeds/{#xxx}.rb
    - Adding some starter content
- _project.html.erb, show.html.erb
    - Referencing db fields
- about_info.yml, contact_info.yml
    - updated site specific info
- _nav.html.erb, application.scss
    - Made nav display more better
- contact.html.erb
    - Updated to display appropriate contact_info.yml

## [x.x.x] - 2024-11-01
### Conversion

### Changed
- database.yml
    - updated from aw_development to closeenoughfabrication
- application.rb
    - updated module name
- application.scss
    - Basic styling
- Moved navbar into it's own shared folder like it should be..
- Should have also changed Title in application.html.erb

## [x.x.x] - 2024-10-19
## New Release

## Changed
- README.md
    - Updated documentation

## [x.x.x] - 2024-10-19
## Implementing Sass (npm install -g sass)

### Added
- application.scss

### Changed
- CHANGELOG.md
    - Had some display issues due to heading tags being incorrectly marked
- application.scss
    - Added very basic styling that was applied originally in css file

### Removed
- application.css

## [x.x.x] - 2024-10-19
## Other featured migrations

## Added
- Corresponding schema and migration files related migrations run

## Changed
- home_controller.rb
    - Featured logic was actually here for the home page related to featured projects and videos. Updated that.
- seeds.rb
    - Updated to add 'featured' data

## [x.x.x] - 2024-10-19
## Migration for better featured blog post control

## Added
- Corresponding migration file related to AddFeaturedToBlogPosts migration

## Changed
- home_controller.rb
    - Featured logic was actually here for the home page related to featured blog posts. Updated that.
- seeds.rb
    - Updated to add 'featured' data

## [x.x.x] - 2024-10-18
## Seed refactoring

## Added
- seeds/{#model}.rb
- images/blog1.rb
- images/project1.rb
- seeds/{#model}.rb

## Changed
- seeds.rb
    - Added code to reference the /seeds/{#model}.rb files
- seeds/{#model}.rb
    - Moved seed info into their own files

## [x.x.x] - 2024-10-18
## Addressing some initial concerns, seed file upgrade (continued)

### Added
- n/a

### Changed
- application_controller.rb
    - Added set_app_content
        - This is considered 'hardcoded' content, and should be altered with great care. This content pertains to a section, but can display everywhere and will be referenced multiple times throughout the app.
- about_controller.rb
    - Removed @about_info
- about/index.html.erb
    - Added more clarity as to how to edit info
- seeds.rb
    - Added starter content for each model in the DB, with references to this file as necessary.
- blog_posts/index.html.erb
    - Displaying all blog posts now.
    - Featured blog_posts remain on the index
- blog_posts_controller.rb
    - @blog_posts = all blog posts
- contact_info.yml
    - Added more clarity as to how to edit info
- projects_controller.rb
    - @projects = all projects
- videos_controller = all videos
    - @videos = all videos

## Removed
- n/a

## [x.x.x] - 2024-10-17

### Added
- n/a

### Changed
- README.md
    - Added some basic documentation to remove a section of the site if necessary
- routes.rb
    - Updated routes to alphabetize

### Removed
- n/a

### Fixed
- n/a

### Security
- n/a

---

## [Unreleased] - 2024-10-17
## Task index and show, seed file to populate data

### Added
-

### Changed
- tasks_controller.rb
    - Added @tasks to index and show actions
- tasks/index.html.erb
    - Populating each task in the DB
- tasks/show.html.erb
    - Populating the task with the associated id in the DB tasks/[id]
- seeds.rb
    - Some dummy data to populate the database with rails db:seed

### Removed
-

## [Unreleased] - 2024-10-17
## Creating an About Section

### Added
- about_info.yml

### Changed
- about_info.yml
    - Added some paragraphs and links.
- about_controller.rb
    - Added @about info to index action (This displays hardcoded about content)

### Removed
- home_controller.rb
    - @about = action to add on it's own controller

## [Unreleased] - 2024-10-16
## Displaying content appropriately, timezone update, YAML File

### Added
- contact_info.yml

### Changed
- HomeController
    - Added featured projects, blogposts, videos, and an about section.
- index.html.erb
    - Displays the featured content set in the home controller, and some basic about info.
- some_route/index.html.erb, show.html.erb
    - Displays content as appropriate based on the route (tasks, projects, videos, etc)
- application.css
    - State of the art image sizing applied
- application.rb
    - Set default timezone to Pacific
- contact_controller.rb
    - contact_info.yml referenced
- README.md
    - Referenced this file

## [Unreleased] - 2024-10-16
## Initial Site Framework and Navbar

### Added
- BlogPosts, Projects, Tasks, Videos
    - Models
    - Controllers
        - Views
- About, Contact, Home
    - Controller
        - View
- Gemfile
    - sassc-rails
- _navbar.html.erb (see changes below)

### Changed
- application.html.erb
    - navbar is rendered here
- routes.rb
    - Index established (home#index)
    - Other routes set to page#index
- _navbar.html.erb
    - Contains links to each index action, as set in routes

## Unreleased
- improved README formatting and descriptions for features tech stack and local development
