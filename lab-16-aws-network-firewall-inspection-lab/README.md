# 🔥 AWS Network Firewall Inspection Lab

Este laboratório demonstra a implementação de uma arquitetura de inspeção de tráfego utilizando **AWS Network Firewall**, **VPC Routing** e **NAT Gateway**.

O objetivo é inspecionar tráfego **de entrada e saída da VPC**, aplicando regras de segurança e testando bloqueios de domínio e protocolo.

---

# 🏗 Arquitetura

![Architecture Diagram](architecture/architecture-diagram.png)

---
# ☁️ Arquitetura composta por: 
- **Network**: VPC; Subnets públicas e privadas; Firewall Subnet; AWS Network Firewall; NAT Gateway; EC2 Instances; Route Tables; Internet Gateway e CloudWatch Logs
- **Segurança**:AWS Network Firewall; Stateful Rule Groups e Stateless Rule Groups
- **Monitoramento**: Amazon CloudWatch Logs
- - **Amazon EC2**: AWS Systems Manager (Session Manager)
---

# 🔄 Fluxo de tráfego

### Tráfego de saída (Public Subnet)

