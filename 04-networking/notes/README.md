Introduction to Networking
Core Network Devices
Switch

A switch connects devices within the same network and forwards data based on MAC addresses.

Router

A router connects different networks together and directs traffic based on IP addresses.

Firewall

A firewall monitors incoming and outgoing traffic and enforces security rules based on predefined policies.

These three components form the backbone of modern networks.

LAN and WAN
LAN (Local Area Network)

Covers a small geographic area

Examples: home network, office network, Wi-Fi

WAN (Wide Area Network)

Covers large geographic areas (cities, countries)

Connects multiple LANs together

Example: the internet

What Is a Computer Network?

A computer network is a group of devices connected together to share resources and information.

Purpose of Networking

Resource sharing

Server-to-server communication

Application deployment

Infrastructure management

Performance optimisation

Networking ensures data moves efficiently and reliably between systems.

IP Addresses

An IP address (Internet Protocol address) is a unique identifier assigned to a device on a network.

Types of IP Addresses

IPv4 – dotted decimal format (e.g. 192.168.1.1)

IPv6 – hexadecimal format separated by colons (e.g. 2001:db8::1)

IP addresses allow devices to locate and communicate with each other.

MAC Addresses

A MAC (Media Access Control) address is a unique identifier assigned to a network interface.

Operates at the Data Link layer (Layer 2)

Used for node-to-node communication

Essential for network communication and security

Ports and Protocols
Ports

Ports are logical endpoints that allow multiple services to communicate on the same device.

Protocols

Protocols define the rules for data transmission, formatting, and communication.

TCP and UDP
TCP (Transmission Control Protocol)

Connection-oriented

Requires a handshake before data transfer

Reliable and ordered delivery

Error checking and flow control

TCP use cases:

Web browsing

Email

File transfers

UDP (User Datagram Protocol)

Connectionless

No handshake required

Faster but less reliable

No guaranteed delivery

UDP use cases:

Video streaming

Online gaming

VPN

DNS

OSI Model

The OSI (Open Systems Interconnection) model is a conceptual framework that standardises how devices communicate over a network.

Why the OSI Model Matters

Application independence

Simplified troubleshooting

Easier equipment upgrades

Encourages innovation without breaking the entire system

The 7 OSI Layers
7. Application

Provides network services directly to applications used by end users.

6. Presentation

Ensures data is in a readable format.
Handles encryption and decryption.

5. Session

Establishes, manages, and terminates communication sessions.
Examples: NetBIOS, RPC.

4. Transport

Provides end-to-end communication.
Protocols: TCP and UDP.

3. Network

Handles packet forwarding and routing.
Uses IP addresses.

2. Data Link

Provides node-to-node delivery.
Uses MAC addresses.
Detects and corrects errors from the physical layer.

1. Physical

Transmits raw bits over a physical medium.
Examples: Ethernet cables, Wi-Fi signals, fibre optics.

TCP/IP Model

A simplified and commonly used networking model.

Layers

Application

Transport (TCP / UDP)

Internet (IP)

Network Access (combines OSI Layers 1 and 2)

HTTPS

Uses port 443

Secure version of HTTP

Encrypts data between client and server

DNS (Domain Name System)

DNS translates domain names into IP addresses, enabling internet navigation.

DNS Components

Name Servers – store DNS records

Authoritative Servers – hold official DNS data

Recursive Servers – query other servers and cache results

Zone Files

Zone files live on authoritative name servers and store DNS records in a structured format.

Common DNS Records
CNAME

Maps one domain name to another domain name.

MX (Mail Exchange)

Specifies mail servers for a domain.
Includes priority values to determine delivery order.

TXT

Stores text information about a domain.
Commonly used for:

SPF

Domain ownership verification

Security policies

DNS Resolution Process

User enters a domain name

System checks local cache and /etc/hosts

Query is sent to a recursive resolver

Resolver queries:

Root server

TLD server

Authoritative server

IP address is returned to the user

Result is cached for faster future lookups

Importance of DNS Resolution

Ensures high availability

Critical for troubleshooting

Essential for network configuration and management

Authoritative vs Non-Authoritative Responses

Authoritative: Comes directly from the source DNS server

Non-authoritative: Comes from cache

Summary

Switches use MAC addresses within networks

Routers use IP addresses between networks

TCP is reliable; UDP is fast

OSI provides a structured communication model

DNS enables domain-to-IP translation

Proper networking knowledge is critical for DevOps engineers
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
