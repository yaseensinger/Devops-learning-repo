<<<<<<< HEAD
# IAM Policies Structure – Theory Notes
=======

>>>>>>> 2256faa77757c2074832d58df8e9e2d8f25eae1a

## IAM Policies

An IAM policy is a JSON document that defines permissions in AWS. It determines what actions are allowed or denied for users, groups, or roles on specific AWS resources.

Policies provide fine-grained access control and are the primary way of managing permissions in AWS.

## Structure of an IAM Policy

An IAM policy consists of several elements, each serving a specific purpose.

### Version

<<<<<<< HEAD
The `Version` element specifies the policy language version used by AWS. The commonly used version is `2012-10-17`.

### Id

The `Id` element is optional and acts as an identifier for the policy. It helps distinguish one policy from another.

### Statement

The `Statement` element contains one or more permission statements. Each statement defines a specific permission rule.
=======
The Version element specifies the policy language version used by AWS. The commonly used version is `2012-10-17`.

### Id

The Id element is an optional identifier for the policy. It helps distinguish one policy from another.

### Statement

The Statement element contains one or more permission statements. Each statement defines a specific permission rule.
>>>>>>> 2256faa77757c2074832d58df8e9e2d8f25eae1a

## Elements of a Statement

### Sid (Statement ID)

<<<<<<< HEAD
The `Sid` element is optional and provides a unique identifier or label for a statement. It is mainly used for easier management and reference.

### Effect

The `Effect` element specifies whether the permission is granted or denied. It can have one of two values:

- `Allow`
- `Deny`

### Principal

The `Principal` element identifies the user, role, service, or AWS account to which the policy applies.

### Action

The `Action` element specifies the AWS operations that are allowed or denied, such as reading, writing, or deleting resources.

### Resource

The `Resource` element identifies the AWS resource on which the specified actions can be performed, such as an S3 bucket or an EC2 instance.

### Condition

The `Condition` element is optional and allows additional restrictions to be applied. Conditions can limit access based on factors such as IP address, time of access, or other request attributes.

## Summary

An IAM policy defines:

- Who receives the permission.
- What actions are allowed or denied.
- Which AWS resources are affected.
- Under what conditions the permissions apply.

IAM policies provide flexible and fine-grained access control, making it possible to securely manage permissions across AWS resources.

```git
=======
The Sid element is optional and provides a unique identifier or label for a statement. It is mainly used for easier management and reference.

### Effect

The Effect element specifies whether the permission is granted or denied. It has two possible values: Allow or Deny.

### Principal

The Principal element identifies the user, role, service, or AWS account to which the policy applies.

### Action

The Action element specifies the AWS operations that are allowed or denied, such as reading, writing, or deleting resources.

### Resource

The Resource element identifies the AWS resource on which the specified actions can be performed, such as an S3 bucket or an EC2 instance.

### Condition

The Condition element is optional and allows additional restrictions to be applied. Conditions can limit access based on factors such as IP address, time of access, or other request attributes.

```
>>>>>>> 2256faa77757c2074832d58df8e9e2d8f25eae1a
