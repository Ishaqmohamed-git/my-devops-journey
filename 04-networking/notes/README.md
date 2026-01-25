Networking Fundamentals – DevOps Notes
Routing
What is Routing?

Routing is the process of determining the best path for data to travel across a network.
It can be thought of as a GPS for data, deciding how packets move from source to destination.

Why Routing Is Important

Ensures data reaches its destination efficiently

Fundamental to how the internet works

Routing tables are used to make forwarding decisions

Why Routing Matters for DevOps Engineers

Network performance optimisation

Reliable application delivery

Managing and troubleshooting complex infrastructure

Types of Routing
Static Routing

Manually configured by a network administrator

Routes do not change automatically

Simple but not scalable

Requires manual updates when the network changes

Dynamic Routing

Uses algorithms to automatically find the best path

Routes adjust based on:

Network traffic

Reliability

Link cost

Scalable and adaptable

Common in large and complex networks

Routing Protocols

Routing protocols define how routers discover and update routes.

OSPF (Open Shortest Path First)

Commonly used within organisations

Uses link-state information

Calculates the shortest path based on cost

BGP (Border Gateway Protocol)

Used between autonomous systems (large independent networks)

Powers routing on the internet

Uses path-vector mechanisms

Routes change dynamically based on network conditions

Subnetting

Subnetting is the process of dividing a large network into smaller, more manageable networks.

Benefits of Subnetting

Improved network performance (less broadcast traffic)

Easier network management

Better security and isolation

More efficient IP address usage

Importance in Cloud Environments

Resource isolation

Traffic control

Improved security

Scalable infrastructure design

CIDR (Classless Inter-Domain Routing)

CIDR is a method for allocating IP addresses efficiently.

CIDR Format
IP_address / prefix_length


Example:

192.168.1.0/24

Why CIDR Is Important

Allows flexible network sizing

Reduces IP address waste

Improves routing efficiency

Binary Basics (Networking Context)

Binary is a base-2 system

Uses only 0 and 1

Binary to Decimal Conversion

Example:

10101010


Each bit represents a power of 2.
Add the values of all bits set to 1 to get the decimal number.

Subnet Masks

Subnet masks define:

The network portion of an IP address

The host portion of an IP address

They work together with CIDR to control routing and subnet size.

NAT (Network Address Translation)

NAT translates private IP addresses into public IP addresses, allowing internal devices to communicate with the internet.

Why NAT Exists

IPv4 addresses are limited

NAT allows many devices to share a small number of public IPs

Improves security by hiding internal IP addresses

Types of NAT
Static NAT

One private IP mapped to one public IP

Device is consistently reachable from the internet

Dynamic NAT

Uses a pool of public IP addresses

Private IPs are mapped temporarily

PAT (Port Address Translation)

Multiple devices share a single public IP

Each connection is distinguished by a port number

Common in home and office networks

Example

A device with a private IP connects to google.com.
The router translates the private IP into a public IP, which is the only address Google sees.

Troubleshooting Networks
Why Troubleshooting Matters

Ensures smooth operations

Minimises downtime

Helps identify and fix root causes quickly

Common Troubleshooting Tools

ping – tests connectivity

traceroute – shows the path data takes

nslookup – resolves domain names to IP addresses

dig – detailed DNS queries

Example Troubleshooting Flow

Check basic connectivity (ping)

Verify DNS resolution (nslookup, dig)

Check /etc/hosts

Clear DNS cache if needed

Cloud Networking

Cloud networking is essential in DevOps because most modern applications run in cloud environments.

Key Components
VPC (Virtual Private Cloud)

Isolated virtual network in the cloud

You control IP ranges, subnets, and routing

Subnets

Divide a VPC into smaller networks

Improve performance, security, and traffic control

Gateways

Allow VPCs to communicate with external networks (e.g. the internet)

Handle inbound and outbound traffic

Summary

Routing selects the best path for data

Static routing is manual; dynamic routing adapts automatically

Subnetting improves performance, security, and scalability

CIDR enables efficient IP address allocation

NAT allows private networks to access the internet

Troubleshooting is critical for reliable systems

Cloud networking relies heavily on proper routing and subnet design
