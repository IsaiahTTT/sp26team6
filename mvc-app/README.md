This is the README file for the complete MVC Application. Use this file to provide information about the application's architecture, features, and how to set it up and run it.
# MVC App Use Case Mapping

This folder contains the Spring Boot MVC implementation for lifeLvling.

## Provider Implementation

The provider/instructor side includes:

- Instructor signup/login
- Instructor dashboard
- Provider profile edit/delete
- Course create/edit/delete
- Workout course details
- Review reply create/delete
- Provider navigation and UI styling

---

## Provider Use Cases

### US-PROV-001 — Instructor Signup/Login/Profile Management

Implemented by:

- `ProviderUIController.java`
- `ProviderService.java`
- `ProviderRepository.java`
- `Provider.java`
- `provider-login.ftlh`
- `provider-signup.ftlh`
- `provider-dashboard.ftlh`
- `provider-edit.ftlh`
- `provider-list.ftlh`

Routes:

```text
/provider-login
/provider-signup
/ui/providers/dashboard/{providerId}
/ui/providers/edit/{providerId}
/ui/providers

## US-PROV-002 — Create/Edit/Delete Workout Courses

Implemented by:

ProviderCourseMVCController.java
CourseService.java
CourseRepository.java
Course.java
provider-course-list.ftlh
provider-course-form.ftlh
provider-course-edit.ftlh

Routes: 
/ui/provider-courses?providerId={providerId}
/ui/provider-courses/add?providerId={providerId}
/ui/provider-courses/edit/{courseId}
/ui/provider-courses/update/{courseId}
/ui/provider-courses/delete/{courseId}

## US-PROV-003 — View Instructor Dashboard and Course Information

Implemented by:

ProviderUIController.java
ProviderCourseMVCController.java
provider-dashboard.ftlh
provider-course-list.ftlh

Displayed data:

Provider ID
Instructor username
Certifications
Exercise type
Course ID
Category
Sets
Reps
Duration
Points reward
Workout instructions

US-PROV-004 — Reply to Customer Reviews

Implemented by:

ReviewReplyUiController.java
ReviewReplyService.java
ReviewReplyRepository.java
ReviewReply.java
provider-review-replies.ftlh
provider-review-reply-form.ftlh

Routes:
/ui/review-replies?providerId={providerId}
/ui/review-replies/add?providerId={providerId}
/ui/review-replies/delete/{replyId}