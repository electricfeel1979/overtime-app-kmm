# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models

- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI

## Features:

- Approval Workflow
- SMS Sending -> link to approval or overtime input
- x Administrate admin dashboard
- x Block non admn and guest user
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI:

- x Bootstrap -> formatting
- Icons from Font Awesome
- x Update the styles for forms

## Refactor TODOS:
- Refactor user association integration test in post_spec

## Important stuffs

web: bin/rails server -p 3000
js: yarn run build --watch
css: yarn run build:css --watch
