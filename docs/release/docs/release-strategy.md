# Release Strategy

This document outlines the release strategy for the FastAPI project.

## Release Cycle

The project follows a time-based release cycle with the following cadence:

- **Minor releases**: Every 2 weeks
- **Major releases**: Every 3 months
- **Patch releases**: As needed for critical bug fixes

## Release Process

### 1. Release Planning

- Create a release milestone in GitHub
- Assign issues and pull requests to the milestone
- Prioritize features and bug fixes

### 2. Release Preparation

- Create a release branch from the main branch
- Run the release preparation workflow
- Update version numbers and changelogs

### 3. Testing

- Run automated tests
- Perform manual testing
- Deploy to the staging environment

### 4. Release

- Create a GitHub release
- Tag the release with the version number
- Deploy to production

### 5. Post-Release

- Monitor for issues
- Prepare hotfixes if necessary
- Update documentation

## Versioning

The project follows semantic versioning (SemVer):

- **Major version**: Breaking changes
- **Minor version**: New features, no breaking changes
- **Patch version**: Bug fixes, no new features or breaking changes

## Hotfixes

For critical issues that need immediate attention:

1. Create a hotfix branch from the production tag
2. Fix the issue
3. Create a pull request
4. Deploy to staging for testing
5. Deploy to production
6. Merge the hotfix back to the main branch
