# Doable

Doable is a Ruby on Rails application for managing projects and todos. It helps you organize your tasks and keep track of your projects in a simple and efficient way.

## Features

- Project management
  - Create, read, update, and delete projects
  - Organize todos within projects
- Todo management
  - Create and manage todos with descriptions
  - Set priority levels for todos
  - Mark todos as completed
  - Associate todos with specific projects
- Modern UI with Tailwind CSS
- JSON API support for todos

## Technology Stack

- Ruby on Rails 8.0.2
- SQLite3 database
- Puma web server
- Tailwind CSS
- Turbo Rails and Stimulus for JavaScript functionality
- Import maps for JavaScript module management

## Prerequisites

- Ruby (compatible with Rails 8.0.2)
- SQLite3
- Node.js (for Tailwind CSS)

## Installation

1. Clone the repository:

```bash
git clone [repository-url]
cd doable
```

2. Install dependencies:

```bash
bundle install
```

3. Setup the database:

```bash
bin/rails db:create
bin/rails db:migrate
```

4. Start the Rails server:

```bash
bin/rails server or bin/rails s
```

The application will be available at `http://localhost:3000`

## Development

The project includes several development tools:

- Brakeman for security analysis
- RuboCop for code style enforcement
- Ruby LSP for IDE support
- ERB formatter for template formatting
- Standard Ruby for code standardization

### To run the linters:

```bash
bundle exec rubocop
bundle exec standardrb
```

## Testing

The project uses:

- Capybara for integration testing
- Selenium WebDriver for browser automation

### To run the tests:

```bash
rails test
rails test:system
```
