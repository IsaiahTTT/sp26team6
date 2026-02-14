
# Requirements – Starter Template

**Project Name:** lifeLvling \
**Team:** Isaiah Turner & Daylan Cobb \
**Course:** CSC 340\
**Version:** 1.0\
**Date:** 2026-02-13

---

## 1. Overview
**Vision.** Create an app where anyone can find the motivation to be healthier.

**Glossary**
- Customer: A user who enrolls in fitness courses to earn points and level up.
- Provider: A fitness instructor who creates and manages workout courses.
- Course: A structured fitness program created by a Provider.
- Points: Rewards given to Customers for completing workouts.
- Level: A rank achieved based on accumulated points.
- Leaderboard: A ranked display of users based on total points.
- Enrollment: The act of joining a course.


**Primary Users / Roles.**
- **Customer (e.g., Student/Patient/Pet Owner/etc. )** — Anybody will be able to create a profile and follow through with their ideal workout routine
- **Provider (e.g., Teacher/Doctor/Pet Sitter/etc. )** — Fitness instructors who create and manage workout courses, track student progress, and respond to reviews.

**Scope (this semester).**
- <capability 1> Account creation/login
- <capability 2> Viewable dashboard with available courses
- <capability 3> Course enrollment/drop

**Out of scope (deferred).**
- <deferred 1> subscriptions/payment
- <deferred 2> sreak/point system

> This document is **requirements‑neutral** and solution‑neutral; design decisions (UI layouts, API endpoints, schemas) are documented separately.

---

## 2. Functional Requirements (User Stories)

### 2.1 Customer Stories

- **US-CUST-001 — Create/Login Profile**  
  _Story:_ As a customer, I want to create an account or log in so that I can track my progress.  
  _Acceptance:_  
  Scenario: Logging into the app
    Given the customer opens the app
    When the customer enters valid email and password
    Then the customer is logged into their account
  - **US-CUST-002 — View Courses**  
  _Story:_ As a customer, I want to view available workout courses so that I can choose one that fits my needs. 
  _Acceptance:_ Scenario: Viewing available courses
  Given the customer is logged in
  When the customer navigates to the dashboard
  Then a list of available courses is displayed
  - **US-CUST-003 — Enroll/Drop Course**  
  _Story:_ As a customer, I want to enroll in or drop a course so that I can manage my participation.
  _Acceptance:_ Scenario: Enrolling in a course
  Given the customer is viewing a course
  When the customer selects enroll
  Then the course is added to their enrolled list
  - **US-CUST-004 — Write Review**  
_Story:_ As a customer, I want to write a review so that I can share feedback.
_Acceptance:_ Scenario: Writing a review
  Given the customer has been enrolled in the course
  When the customer submits a review
  Then the review appears under the course
### 2.2 Provider Stories
- **US-PROV-001 — Create Provider Profile**
_Story:_ As a provider, I want to create and edit my instructor profile so that customers can view my qualifications.
_Acceptance:_ Scenario: Creating a provider profile
  Given the provider is logged in
  When the provider saves profile information
  Then the updated profile is visible to customers
- **US-PROV-002 — Create Course**
_Story:_ As a provider, I want to create workout courses so that customers can enroll.
_Acceptance:_ Scenario: Creating a course
  Given the provider is logged in
  When the provider submits a new course form
  Then the course appears on the public dashboard
- **US-PROV-003 — View Student Statistics**
_Story:_ As a provider, I want to view student statistics so that I can track performance.
_Acceptance:_ Scenario: Viewing statistics
  Given the provider selects a course
  When the statistics page loads
  Then enrollment and progress data are displayed
- **US-PROV-004 — Reply to Reviews**
_Story:_ As a provider, I want to reply to reviews so that I can respond to feedback.
_Acceptance:_ Scenario: Replying to a review
  Given the provider is viewing course reviews
  When the provider submits a reply
  Then the reply appears below the review


 

## 3. Non-Functional Requirements
- Performance
The system shall support at least 100 concurrent users.
All pages shall load within 3 seconds under normal conditions.
- Availability / Reliability
The system shall maintain 99% uptime.
User data shall be backed up daily.
- Security / Privacy
User passwords shall be encrypted using industry-standard hashing.
Only enrolled customers and providers shall access course-specific data.
- Usability
A new user shall be able to register and enroll in a course within 5 minutes.
The interface shall be responsive on both desktop and mobile devices.

## 4. Assumptions, Constraints, and Policies
User must have a valid email to create an account
User must have been previously enrolled in a course to write a review
Reviews cannot be posted if it contains vulgar language or disrespect
- list any rules, policies, assumptions, etc.

---

## 5. Milestones (course‑aligned)
- **M2 Requirements** — this file + stories opened as issues. 
- **M3 High‑fidelity prototype** — core customer/provider flows fully interactive. 
- **M4 Design** — architecture, schema, API outline. 
- **M5 Backend API** — key endpoints + tests. 
- **M6 Increment** — ≥2 use cases end‑to‑end. 
- **M7 Final** — complete system & documentation. 

---

## 6. Change Management
- Stories are living artifacts; changes are tracked via repository issues and linked pull requests.  
- Major changes should update this SRS.
