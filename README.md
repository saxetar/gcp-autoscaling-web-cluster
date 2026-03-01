# GCP Auto-Scaling Web Cluster

This repository contains the initialization script for a highly available, auto-scaling web architecture on Google Cloud Platform (GCP).

## Architecture Details
* **Compute:** e2-micro instances managed by a stateless Managed Instance Group (MIG).
* **Scaling Metric:** CPU utilization (Target: 60%, Min: 1, Max: 4).
* **Security:** Secured via custom IAM Service Accounts (vcc-vm-sa) and restricted VPC firewall rules (Identity-Aware Proxy for SSH).

## Script Functionality (startup-script.sh)
When attached to a GCP Instance Template, this bash script automatically:
1. Installs the Nginx web server and the `stress` workload generator.
2. Overwrites the default Debian Nginx index file.
3. Generates a custom HTML landing page that dynamically outputs the specific hostname of the newly provisioned instance to verify scaling.
