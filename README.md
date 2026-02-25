# ☁️ Labs Práticos em Cloud e DevOps - AWS

---

### Boas-vindas ao meu Portfólio de Projetos!

Este repositório é um showcase prático das minhas habilidades em **Cloud Computing e DevOps**, focado em arquitetura e automação na AWS. Aqui, demonstro como provisiono e gerencio infraestrutura escalável, segura e resiliente, utilizando as melhores práticas do mercado.

---

### 🚀 Visão Geral

Meus laboratórios abordam os seguintes tópicos principais:

* **Arquitetura de Nuvem:** Criação de infraestrutura resiliente e de alta disponibilidade.
* **Networking:** Gerenciamento avançado de redes (VPC, Transit Gateway, etc.).
* **Segurança:** Implementação de políticas de acesso e segurança (IAM, ACM, Budgets).
* **Automação e DevOps:** Uso de ferramentas como Terraform (em progresso) e scripts.

---

![Badge AWS](https://img.shields.io/badge/AWS-Prático-orange?style=for-the-badge&logo=amazonaws)
![Badge Terraform](https://img.shields.io/badge/Terraform-In Progress-623CE4?style=for-the-badge&logo=terraform)
![Badge DevOps](https://img.shields.io/badge/DevOps-Automação-blue?style=for-the-badge&logo=githubactions)

---

### 📂 Projetos e Laboratórios Concluídos

| Nº | Projeto | Serviços Principais | Descrição do Lab | 🔗 Acesso |
|:---|:---|:---|:---|:---:|
| **00** | Monitoramento de Custos | AWS Budgets, CloudWatch, SNS | Configuração de alertas financeiros para evitar gastos inesperados na conta. | [Acessar](https://github.com/George-lsantos/Laboratorios-Cloud-AWS/tree/main/lab-00-monitoramento) |
| **02** | Replicação entre Contas | S3, IAM | Estratégia de backup e resiliência com replicação de objetos S3 entre contas distintas. | [Acessar](https://github.com/George-lsantos/Laboratorios-Cloud-AWS/tree/main/lab-02-s3-cross-account-replication) |
| **03** | Site Estático na Nuvem | S3, CloudFront, Route 53, ACM | Hospedagem de site estático com CDN, certificado SSL (HTTPS) e domínio personalizado. | [Acessar](https://github.com/George-lsantos/Laboratorios-Cloud-AWS/tree/main/lab-03-s3-static-website-Cloudfront-ACM) |
| **04** | DNS com Alta Disponibilidade | Route 53, Health Checks | Configuração de DNS com failover para garantir alta disponibilidade de aplicações. | [Acessar](https://github.com/George-lsantos/Laboratorios-Cloud-AWS/tree/main/lab-04-route53-failover) |
| **05** | Balanceamento de Carga (ALB) | Application Load Balancer, EC2 | Redirecionamento de tráfego e distribuição de carga para instâncias EC2. | [Acessar](https://github.com/George-lsantos/Laboratorios-Cloud-AWS/tree/main/lab-05-ALB) |
| **06** | Infra Escalável com Auto Scaling | ALB, Auto Scaling Group, Launch Template | Criação de uma arquitetura escalável que se ajusta automaticamente à demanda de tráfego. | [Acessar](https://github.com/George-lsantos/Laboratorios-Cloud-AWS/tree/main/lab-06-ALB-ASG) |
| **07** | Infra Completa (Web) | ALB, ASG, Route 53, ACM | Implementação de uma arquitetura web segura, escalável e com domínio personalizado. | [Acessar](https://github.com/George-lsantos/Laboratorios-Cloud-AWS/tree/main/lab-07-ALB-ASG-Route53) |
| **08** | Banco de Dados Privado | RDS, VPC, Security Groups | Provisionamento de um banco de dados relacional em uma rede privada (VPC) para maior segurança. | [Acessar](https://github.com/George-lsantos/Laboratorios-Cloud-AWS/tree/main/lab-08-RDS) |
| **09** | Conexão entre Redes (Peering) | VPC Peering | Estabelecimento de comunicação privada e segura entre duas VPCs na mesma região. | [Acessar](https://github.com/George-lsantos/Laboratorios-Cloud-AWS/tree/main/lab-09-network-vpc-peering) |
| **10** | Rede Hub-and-Spoke | Transit Gateway, VPCs | Gerenciamento centralizado de tráfego de rede para múltiplas VPCs usando Transit Gateway. | [Acessar](https://github.com/George-lsantos/Laboratorios-Cloud-AWS/tree/main/lab-10-network-multi-vpc-tgw) |
| **11** | Rede Global (Multi-Conta/Região) | Transit Gateway, VPCs | Conexão de VPCs em diferentes contas e regiões, simulando uma rede corporativa global. | [Acessar](https://github.com/George-lsantos/Laboratorios-Cloud-AWS/tree/main/lab-11-network-multi-vpc-tgw-multi-account-cross-region) |
| **12** | Governança Multi-Conta | AWS Organizations, SCPs | Criação de uma estrutura organizacional para gerenciar permissões e políticas de forma centralizada. | [Acessar](https://github.com/George-lsantos/Laboratorios-Cloud-AWS/tree/main/lab-12-aws-organizations-multi-conta) |
| **13** | Multi-Account AD + AWS AD Connector | AD DS, AD Connector, VPC Peering | Integração de um Active Directory self-managed em uma conta AWS com workloads em outra conta utilizando o AD Connector. | [Acessar](https://github.com/George-lsantos/Laboratorios-Cloud-AWS/tree/main/lab-13-aws-ad-connector-multi-conta) |
| **14** | Amazon WorkSpaces + AD com Grupos | ADDS, AD Connector, WorkSpaces | Integração do Amazon WorkSpaces com Active Directory self-managed, controlando acesso via grupos de usuários e administradores. | [Acessar](https://github.com/George-lsantos/Laboratorios-Cloud-AWS/tree/main/lab-14-aws-workspaces-ad-grupos) |
| **15** | Amazon FSx + AD com Grupos | ADDS, Amazon FSx | Integração do Amazon FSx for Windows File Server com Active Directory self-managed, controlando permissões de acesso via grupos de usuários e administradores. | [Acessar](https://github.com/George-lsantos/Laboratorios-Cloud-AWS/tree/main/lab-15-aws-fsx-ad-grupos) |
| **16** | WordPress Altamente Disponível | EC2, ALB, Auto Scaling, RDS, EFS, VPC, CloudFront, Route 53, ACM, Systems Manager | Implementação de uma arquitetura WordPress altamente disponível e escalável na AWS, utilizando Application Load Balancer e Auto Scaling Group para balanceamento e escalabilidade automática, Amazon EFS para armazenamento compartilhado entre instâncias, Amazon RDS em múltiplas Availability Zones para alta disponibilidade do banco de dados, e CloudFront com Route 53 e ACM para entrega segura e otimizada de conteúdo via HTTPS. | [Acessar](https://github.com/George-lsantos/Laboratorios-Cloud-AWS/tree/main/lab-16-aws-wordpress-ha-cloudfront-alb-asg-rds-efs) |

---

### 📝 Labs Futuros e em Desenvolvimento

Aqui estão alguns projetos que já estão no meu radar:

* **Mini Projeto - MiniFlix:** Arquitetura completa para uma aplicação de streaming.
* **Enterprise AWS Multi-Account Networking & Monitoring:** Foco em redes corporativas e soluções de monitoramento.
* **Pipelines de CI/CD:** Automação de entrega de software com AWS CodePipeline/CodeBuild.
* **Kubernetes (EKS):** Orquestração de contêineres e aplicações em grande escala.

---

### 🌐 Contato

* **Portfólio:** [www.tecnolcloud.com.br](https://www.tecnolcloud.com.br)
* **LinkedIn:** [linkedin.com/in/george-lsantos/](https://www.linkedin.com/in/george-lsantos/)
* **GitHub:** [github.com/George-lsantos](https://github.com/George-lsantos)
