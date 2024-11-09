# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.6.3] 2024/11/09
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

## [1.6.2] 2024/11/02
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

## [1.6.1] 2024/11/01
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

## [1.5.1] 2024/10/19
## New Release

## Changed
- README.md
    - Updated documentation

## [1.5.0] 2024/10/19
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

## [1.4.0] 2024/10/19
## Other featured migrations

## Added
- Corresponding schema and migration files related migrations run

## Changed
- home_controller.rb
    - Featured logic was actually here for the home page related to featured projects and videos. Updated that.
- seeds.rb
    - Updated to add 'featured' data

## [1.3.0] 2024/10/19
## Migration for better featured blog post control

## Added
- Corresponding migration file related to AddFeaturedToBlogPosts migration

## Changed
- home_controller.rb
    - Featured logic was actually here for the home page related to featured blog posts. Updated that.
- seeds.rb
    - Updated to add 'featured' data

## [1.2.0] 2024/10/18
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

## [1.1.0] 2024/10/18
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

## [1.0.0] 2024/10/17

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

## [Unreleased] 2024/10/17
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

## [Unreleased] 2024/10/17
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

## [Unreleased] 2024/10/16
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

## [Unreleased] 2024/10/16
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
    - bootstrap
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