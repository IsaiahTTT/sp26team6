
# Requirements – Starter Template

**Project Name:** lifeLvling \
**Team:** Isaiah Turner & Daylan Cobb \
**Course:** CSC 340\
**Version:** 1.0\
**Date:** 2026-02-13

---

## 1. Overview
**Vision.** Create an app where anyone can find the motivation to be healthier.

**Glossary** Terms used in the project
- **Term 1:** description.
- **Term 2:** description

**Primary Users / Roles.**
- **Customer (e.g., Student/Patient/Pet Owner/etc. )** — Anybody will be able to create a profile and follow through with their ideal workout routine
- **Provider (e.g., Teacher/Doctor/Pet Sitter/etc. )** — 1 line goal statement.

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
Write each story as: **As a `<role>`, I want `<capability>`, so that `<benefit>`.** Each story includes at least one **Given/When/Then** scenario.

### 2.1 Customer Stories
- **US‑CUST‑001 — <short Profile>**  
  _Story:_ As a customer, I want to be able to create an account or login to save my progression and be able to edit my profile
  _Acceptance:_
  ```gherkin
  Scenario: <Logging into the app>
    Given <A customer opens the app>
    When  <The customer enters their name/email, password>
    Then  <Profile created, Profile available to edit>
  ``` 

- **US‑CUST‑002 — <short Courses>**  
  _Story:_ As a customer, I want to view available workout courses that fit my needs  
  _Acceptance:_
  ```gherkin
  Scenario: <Searching for workout course>
    Given <The User is logged in>
    When  <The user logs in, user is brought to the main dashboard>
    Then  <User can select their enrolled courses, or search for new courses with keywords>
  ```


- **US‑CUST‑003 — <short Enroll & Drop>**  
  _Story:_ As a customer, I want to have the option to add and drop courses  
  _Acceptance:_
  ```gherkin
  Scenario: <Wants to add or drop a course>
    Given <The user is logged in>
    When  <The user has selected a course and is viewing the course>
    Then  <A add/drop option will be available>
  ```

  - **US‑CUST‑004 — <short WriteReview>**  
  _Story:_ As a customer, I want to be able to write a review on a course 
  _Acceptance:_
  ```gherkin
  Scenario: <Writing a review>
    Given <User is logged in and has previously been enrolled in the course>
    When  <The user is viewing the selected course>
    Then  <A write review option will be available>
  ```

### 2.2 Provider Stories
- **US‑PROV‑001 — <short title>**  
  _Story:_ As a provider, I want … so that …  
  _Acceptance:_
  ```gherkin
  Scenario: <happy path>
    Given <preconditions>
    When  <action>
    Then  <observable outcome>
  ```

- **US‑PROV‑002 — <short title>**  
  _Story:_ As a provider, I want … so that …  
  _Acceptance:_
  ```gherkin
  Scenario: <happy path>
    Given <preconditions>
    When  <action>
    Then  <observable outcome>
  ```

- **US‑PROV‑003 — <short title>**  
  _Story:_ As a provider, I want … so that …  
  _Acceptance:_
  ```gherkin
  Scenario: <happy path>
    Given <preconditions>
    When  <action>
    Then  <observable outcome>
  ```

  - **US‑PROV‑004 — <short title>**  
  _Story:_ As a provider, I want … so that …  
  _Acceptance:_
  ```gherkin
  Scenario: <happy path>
    Given <preconditions>
    When  <action>
    Then  <observable outcome>
  ```
---

## 3. Non‑Functional Requirements (make them measurable)
**Subscriptions/payment**
- **Performance:** Will be able to handle a certain number of concurrent users or process a certain amount of data within a specific time
- **Availability/Reliability:** Payment system will be available 24/7
- **Security/Privacy:** Anything in the system relating to payments will be private
- **Usability:** Payment process should take no longer than 2-3 minutes

**Streak/Point system**
- **Performance:** Will be able to display the current amount of points at all times and update live whenever there is a change in points 
- **Availability/Reliability:** Users will have access to their points 24/7 and the correct point value will always be displayed
- **Security/Privacy:** Only the User and their instructor will be able to view their point value
- **Usability:** Point system will add/deduct points per what the instructor gives or what a completed/incomplete task is valued at
---

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
