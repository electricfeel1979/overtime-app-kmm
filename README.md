# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models

- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI

## Features:

- Approval Workflow
- SMS Sending -> link to approval or overtime input
- Administrate admin dashboard
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI:

- x Bootstrap -> formatting
- Icons from Font Awesome
- x Update the styles for forms

## Refactor TODOS:

- Refactor user association integration test in post_spec
- Refactor for bootstrap 5

## Important stuffs

web: bin/rails server -p 3000
js: yarn build —watch
css: yarn build:css —watch
