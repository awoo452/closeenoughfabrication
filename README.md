# Close Enough Fabrication

Close Enough Fabrication is a Rails app that serves a public site with featured content plus lightweight admin editing for projects and blog posts.

**Features**
- Home page with featured projects, blog posts, and videos.
- Public pages: About and Contact.
- Blog posts with create/edit/delete (auth required).
- Projects with create/edit/delete (auth required).
- Tasks and videos listings with detail pages.

**Tech Stack**
- Ruby 3.2.2
- Rails 7.1.4
- PostgreSQL
- Devise
- Bootstrap 5
- SassC

**Local Development**
1. Install Ruby 3.2.2 and PostgreSQL.
1. `bundle install`
1. `bin/rails db:create db:migrate`
1. `bin/rails server`

**Admin Workflow**
- Sign up via Devise.
- Approve the user in the Rails console:

```ruby
user = User.find_by(email: "you@example.com")
user.update!(approved: true)
```

**Changelog**
See `CHANGELOG.md` for notable changes.
