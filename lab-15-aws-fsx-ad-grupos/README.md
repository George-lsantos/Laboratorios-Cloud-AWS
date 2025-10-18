# 🧪 Laboratório AWS: Active Directory + Amazon FSx for Windows File Server  
*(Labs Futuros e em Desenvolvimento)*

## 🎯 Objetivo
Este laboratório demonstra a integração de um **Active Directory self-managed** hospedado em EC2 com o serviço **Amazon FSx for Windows File Server**, ambos dentro da mesma VPC.  
O objetivo é fornecer um ambiente prático de **autenticação centralizada**, **armazenamento de arquivos corporativo** e **gestão de permissões via Active Directory** — seguindo as **melhores práticas de segurança e isolamento em subnets privadas**.

---

## 🧠 Arquitetura

![Diagrama de Arquitetura](arquitetura.png)

### 🔍 Descrição da Arquitetura
- **VPC CIDR:** `10.1.0.0/16`  
- **Zonas de disponibilidade:** Duas AZs para alta disponibilidade.  
- **Subnets:**
  - `10.1.1.0/24` — Pública (Bastion Host)  
  - `10.1.2.0/24` — Pública (NAT Gateway)  
  - `10.1.3.0/24` — Privada (Active Directory)  
  - `10.1.4.0/24` — Privada (FSx for Windows)  
- **Bastion Host:** usado para acesso RDP seguro às instâncias privadas.  
- **Active Directory (AD):** executado em uma instância EC2 Windows Server, promovida como Controlador de Domínio (`empresa.local`).  
- **Amazon FSx:** integrado ao domínio AD, fornecendo compartilhamento SMB com autenticação centralizada.  
- **Segurança:**
  - RDP (`3389`) acessível apenas via Bastion Host.  
  - Portas LDAP, Kerberos e SMB liberadas entre o AD e o FSx.  
  - NAT Gateway usado para acesso à internet pelas instâncias privadas.  

---

## 🛠️ Tarefas Realizadas

### 1. **Configuração da VPC**
- Criação da **VPC 10.1.0.0/16**.  
- Criação de **duas zonas de disponibilidade (AZ-A e AZ-B)** com subnets públicas e privadas.  
- Criação de **Internet Gateway** e **NAT Gateway**.  
- Configuração de **tabelas de rotas** para acesso interno e externo.

---

### 2. **Deploy do Bastion Host**
- Instância EC2 Windows Server em `10.1.1.0/24` (pública).  
- Acesso via RDP controlado por **Security Group (SG-RDP)**.  
- Permite acesso remoto às instâncias privadas.

---

### 3. **Configuração do Active Directory (AD)**
- Instância EC2 Windows Server em `10.1.3.0/24` (privada).  
- Promovida como **Controlador de Domínio**: `empresa.local`.  
- Criados **grupos e usuários**:
  - `FSx-Users` → Acesso **Read/Write**.  
  - `FSx-Admins` → Acesso **Full Control**.  
- Contas:
  - `joao.silva` (usuário comum).  
  - `maria.admin` (administradora FSx).

---

### 4. **Deploy do Amazon FSx for Windows File Server**
- Criado em `10.1.4.0/24` (privada).  
- Integrado ao domínio **empresa.local**.  
- Configuradas permissões:
  - `FSx-Users`: Leitura e gravação.  
  - `FSx-Admins`: Controle total.  
- Ativado **Shadow Copies** para restauração de versões.  

---

### 5. **Configuração de Segurança**
- **Security Groups:**
  - Bastion → AD: RDP (`3389`)  
  - AD ↔ FSx: LDAP (`389`), Kerberos (`88`), SMB (`445`), RPC (`135`), LDAPS (`636`), Global Catalog (`3268-3269`)  
- **NACLs** configuradas para comunicação interna segura entre subnets.  

---

### 6. **Mapeamento do Compartilhamento FSx**
A partir de uma estação do domínio ou do Bastion Host:

```powershell
net use Z: \\fsx-empresa.local\Compartilhamento
