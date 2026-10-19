# CI/CD

**CI** - Continuous Integration  
**CD** - Continuous Deployment / Delivery

## CI/CD Pipeline

- Commit
- Build trigger
- Build
- Notify build outcome
- Run tests
- Notify test outcome
- Deliver build to staging
- Deploy to production## 1. Role of DevOps

DevOps brings development and operations together to help software teams
deliver changes reliably and continuously.

### DevOps lifecycle

1.  **Plan** --- decide what needs to be built.
2.  **Code** --- write the software.
3.  **Build** --- compile or package the code.
4.  **Test** --- check that it behaves as expected.
5.  **Release** --- prepare a version for delivery.
6.  **Deploy** --- make the software available in an environment.
7.  **Operate** --- run and maintain the software.
8.  **Monitor** --- observe performance, reliability, and errors.

These stages form a continuous loop: monitoring and feedback inform
future planning and improvements.

## Secrets

**Secrets** are sensitive information that should not be exposed.

Examples include: - API keys - Passwords - Database credentials - Access
tokens and other credentials

### Good practices

-   Don't hard-code secrets into source code.
-   Don't commit secrets to version control.
-   Store them in environment variables or a dedicated secrets manager
    where appropriate.
-   Limit access to only the people and services that need it.
-   Rotate exposed or compromised credentials.

## Automated Testing and Linting

### Linting

**Linting** analyses source code for potential issues, such as syntax
problems, suspicious patterns, and style inconsistencies.

**Benefits:** - Finds potential issues early. - Encourages consistent
code style. - Helps make code easier to read and maintain.

### Automated Testing

**Automated testing** runs tests against code automatically to check
whether it works as expected.

**Benefits:** - Detects bugs and regressions early. - Provides quick
feedback when code changes. - Helps teams make changes with greater
confidence.

Examples of automated tests include unit tests, integration tests, and
end-to-end tests.



