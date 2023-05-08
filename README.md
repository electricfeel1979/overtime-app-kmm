# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models

- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- x AuditLog

## Features:

- x Approval Workflow
- x SMS Sending -> link to approval or overtime input -> integrate with Heroku scheduler
- x Administrate admin dashboard
- x Block non admn and guest user
- Email summary to managers for approval
- x Needs to be documented if employee did not log overtime
- Create audit log for each text message

## TODOS:

## Important stuffs

web: bin/rails server -p 3000
js: yarn run build --watch
css: yarn run build:css --watch
