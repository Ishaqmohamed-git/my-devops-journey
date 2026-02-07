AWS – Core Concepts & Services
AWS History

2002 – Amazon internally launched infrastructure services

2004 – AWS launched publicly with Amazon SQS

Regions & Availability Zones

Availability Zones (AZs) are clusters of data centers within a region

AZs provide high availability and fault tolerance

If one AZ fails, workloads can continue running in others

Choosing an AWS Region

Depends on:

Compliance & data governance (data residency laws)

Customer location (lower latency)

Available AWS services

Pricing (varies by region)

Points of Presence & Edge Locations

Edge locations deliver content closer to users

Used by services like CloudFront

Results in lower latency and better performance

IAM – Identity and Access Management
Root User

Not best practice to use

Should only be used for initial setup

Always enable MFA

Users, Groups & Policies

Users and groups are assigned policies

Policies define permissions

Always follow least privilege principle

Inline policies give unique permissions to a single user or role

IAM Policy Structure

Sid – Optional identifier

Effect – Allow or Deny

Principal – Who the policy applies to

Action – What actions are allowed or denied

Resource – Which resources the policy applies to

MFA Devices

Virtual MFA: Authy, Google Authenticator

U2F (Universal 2nd Factor) hardware devices

Supported for root and IAM users

SDK & CLI

AWS SDK allows applications to interact with AWS services programmatically

Embedded into applications

AWS CLI is built on top of the SDK

IAM Security Tools

Credential Report – Tracks user credentials

Access Advisor – Shows unused permissions for cleanup

EC2 – Elastic Compute Cloud

Infrastructure as a Service (IaaS)

Includes:

EC2 instances

EBS storage

Elastic Load Balancers

User Data & Bootstrapping

Runs at instance startup

Used to automate:

Software installs

OS updates

Configuration scripts

EC2 Instance Types

General Purpose

Compute Optimized – CPU-intensive workloads

Memory Optimized – High RAM usage

Storage Optimized

Security Groups

Fundamental network security in AWS

Control inbound and outbound traffic

Can be attached to multiple instances

Best practice: separate SG for SSH access

All inbound traffic is blocked by default

Stateful

Elastic IPs

Public IPs change when instances stop/start

Elastic IP provides a static IP

Can remap IPs quickly to mask instance failure

EBS – Elastic Block Store

Virtual storage volumes for EC2

Data persists even if EC2 stops

Attached to one instance at a time (per AZ)

AMI – Amazon Machine Image

Blueprint for EC2 instances

Includes OS and software

Region-specific

Types:

Public AMIs (Amazon)

Custom AMIs

Marketplace AMIs

EFS – Elastic File System

Fully managed, scalable file system

Works across multiple AZs

Used for shared storage

Expensive but highly available

Scalability & High Availability
Scalability

Vertical – Add more CPU/RAM (non-distributed systems)

Horizontal – Add more instances (elasticity)

High Availability

Designed to handle AZ failure

Achieved using:

Auto Scaling Groups

Load Balancers

Multi-AZ architecture

Load Balancers
Why Use Load Balancers

Distribute traffic across instances

Cookie stickiness

SSL termination

Separate public/private traffic

High availability

Elastic Load Balancer Benefits

Fully managed by AWS

Integrated with AWS services

Built-in health checks

Health Checks

Route + port (e.g. /health)

Must return HTTP 200

Types of Load Balancers

Classic – Legacy

Application (ALB) – Layer 7, HTTP-aware

Network (NLB) – Layer 4, high throughput

Gateway – Third-party appliances (firewalls)

Application Load Balancer (ALB)

Path-based routing

Multiple target groups

Ideal for microservices & containers

Supports dynamic port mapping

Cookies & Stickiness

Keeps users tied to one instance

Can overload instances if misused

SSL / TLS

Encrypts data in transit

TLS is the modern version of SSL

SNI

Hosts multiple SSL certs on one server

Connection Draining

CLB: Connection Draining

ALB/NLB: Deregistration Delay

Auto Scaling Groups (ASG)

Automatically scale EC2 instances

Parameters:

Minimum

Desired

Maximum capacity

CloudWatch

Monitors metrics (CPU, memory, etc.)

Triggers scaling actions

Scaling Policies

Target Tracking

Step Scaling

Scheduled Scaling

Container Services
ECS

Managed container orchestration

EC2 Launch Type

You manage EC2 instances

ECS agent registers instances

Instance profile required

Fargate Launch Type

Serverless

No infrastructure management

Scale by increasing tasks

IAM Roles for ECS

Instance Profile – EC2 launch type

Task Role – Per-task permissions

EKS – Elastic Kubernetes Service

Managed Kubernetes control plane

Cloud-agnostic

Supports EC2 & Fargate

AWS manages patches and updates

Node Types

Managed Node Groups

Self-managed nodes

AWS Fargate

Serverless containers

No nodes to manage

Pay per resource usage

AWS Lambda

Serverless compute

Event-driven

Automatic scaling

Pay per request

Time-limited execution

Serverless Ecosystem

Lambda

S3

DynamoDB

API Gateway

Cognito

SNS / SQS

Networking
CIDR

Defines IP address ranges

Smaller slash = more IPs

Subnets

Segment VPCs across AZs

AWS reserves 5 IP addresses

Internet Gateway

Enables internet access

One IGW per VPC

Bastion Hosts

Secure SSH access to private instances

NAT Gateways

Outbound internet access for private subnets

Fully managed

Requires IGW

NACLs

Stateless firewall at subnet level

One per subnet

Rule priority by number

Works with Security Groups

VPC Peering

Connect VPCs privately

No overlapping CIDRs

Cross-account & cross-region supported

VPC Endpoints

Private access to AWS services

No internet/NAT required

Endpoint Types

Interface Endpoints – ENI + SG (paid)

Gateway Endpoints – S3 & DynamoDB (free)

IPv6

Dual-stack supported

Egress-only IGW for outbound IPv6

Transit Gateway

Central hub for VPC, VPN, Direct Connect

Enables transitive routing

Route 53

AWS DNS service

Scalable, highly available

Authoritative DNS

Domain registrar

100% SLA

Hosted Zones

Containers for DNS records

Public or private

Control routing policies

DNS Concepts

Protocol

FQDN

Subdomain

SLD

TLD

Root

TTL

Cache duration for DNS records

Longer TTL = less traffic

Short TTL = faster updates

CNAME vs Alias

CNAME – Non-root domains only

Alias – AWS resources, root supported

No TTL required for Alias

Routing Policies

Simple

Weighted

Latency-based

Failover

Geolocation

Geoproximity

IP-based

Multi-value
j
