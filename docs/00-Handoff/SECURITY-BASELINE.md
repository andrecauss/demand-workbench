# Security Baseline

## Review result

No implementation-level security conclusion is possible yet. The repository contains no application code, dependency manifests, deployment configuration, secrets configuration, infrastructure, CI pipeline, or runtime environment to assess.

The absence of detected implementation artifacts is a limitation of evidence, not a positive security assessment.

## Required controls

- Centralized authentication and role-based authorization for creation, review, approval, publication, administration, and export.
- Durable audit events for data treatment, forecast execution, adjustments, state transitions, approvals, publication, and exports.
- A transactional database constraint for one Published version per planning cycle, including concurrent requests.
- Encryption in transit and at rest, data classification, retention rules, and least-privilege access.
- Secrets outside source control, with rotation and environment isolation.
- Input and file validation, output encoding, request limits, and protection against injection and unauthorized object access.
- Locked dependencies, vulnerability scanning, secret scanning, and security checks in CI.
- Structured logs that exclude secrets and sensitive business data.
- Tested backup, restore, and disaster-recovery procedures for planning data and audit history.

## Production security gates

1. Threat model and data-classification review.
2. Authorization tests for every endpoint and user action.
3. Concurrency test for the single-publication constraint.
4. Dependency, secret, source, and infrastructure scans in CI.
5. Backup and restore exercise.
6. Audit-trail integrity and access review.
7. Export review covering scope, recipient, encryption, retention, and traceability.

## Business decision required

The requirements include Customer and Customer Type dimensions. A data owner must determine whether they contain personal, confidential, or commercially sensitive information, who may access them, and how long they may be retained.
