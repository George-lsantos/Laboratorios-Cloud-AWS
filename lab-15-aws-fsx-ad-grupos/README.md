# 🧪 Laboratório AWS: Active Directory + Amazon FSx for Windows File Server (Labs Futuros e em Desenvolvimento)

## 🎯 Objetivo
Este laboratório demonstra a integração de um **Active Directory self-managed** (na Conta A) com o **Amazon FSx for Windows File Server** (na Conta B).  
O acesso e as permissões são controlados via **grupos no AD**, garantindo separação clara entre **usuários** e **administradores de arquivos**.

---

## 🧠 Arquitetura

![Diagrama de Arquitetura](arquitetura.png)

---

## 🛠️ Tarefas Realizadas

1. **Configuração do Active Directory (Conta A)**  
   - Criação da **VPC (172.16.0.0/16)** com subnets pública e privada.  
   - Deploy de **EC2 Windows Server (AD DS)** na subnet privada, promovido como **Controlador de Domínio** (`empresa.local`).  
   - Criação de **grupos no AD**:  
     - `FSx-Users`: usuários com acesso ao FSx.  
     - `FSx-Admins`: administradores responsáveis por permissões e quotas.  
   - Contas criadas:  
     - `joao.silva` (grupo `FSx-Users`).  
     - `maria.admin` (grupo `FSx-Admins`).  

2. **Configuração da VPC (Conta B)**  
   - Criação da **VPC (10.0.0.0/16)** com subnets privadas em **duas AZs** para o FSx.  

3. **Peering entre as VPCs**  
   - Estabelecido **VPC Peering** entre Conta A e Conta B.  
   - Configuração de rotas:  
     - Conta A → `10.0.0.0/16`.  
     - Conta B → `172.16.0.0/16`.  

4. **Configuração de Security Groups**  
   - Liberação de portas do AD: `53, 88, 135, 389, 445, 464, 636, 3268, 3269`.  
   - RDP (`3389`) restrito ao **Bastion-Host**.  
   - Garantido o acesso SMB (`445`) ao FSx.  

5. **Deploy do Amazon FSx (Conta B)**  
   - Criação do **Amazon FSx for Windows File Server** integrado ao domínio `empresa.local`.  
   - Selecionadas subnets privadas da Conta B.  
   - Configuração de permissões:  
     - `FSx-Users`: **Read/Write**.  
     - `FSx-Admins`: **Full Control**.  
   - Ativado **Shadow Copies** para restauração de versões.  

6. **Acesso ao Compartilhamento FSx**  
   - Mapeamento da unidade de rede pelos usuários:  
     ```powershell
     net use Z: \\fsx-empresa.local\Compartilhamento
     ```
   - **Usuários FSx-Users**: salvar e abrir arquivos.  
   - **Usuários FSx-Admins**: alterar permissões e gerenciar cotas.  

---

## ✅ Resultados Esperados

- Usuários do grupo **FSx-Users** conseguem acessar e utilizar o compartilhamento do FSx.  
- Administradores do grupo **FSx-Admins** podem gerenciar permissões, quotas e administração do FSx.  
- O FSx está **integrado ao AD**, garantindo autenticação centralizada.  
- Segurança mantida via **VPC Peering** e **grupos de AD**.  
- **Alta disponibilidade** garantida pelo FSx em múltiplas zonas de disponibilidade.  

---

## 📷 Evidências de Configuração

| Componente | Screenshot |
|------------|------------|
| VPC Conta A (AD DS) | ![VPC A](evidencias/vpc-a.png) |
| Bastion Host | ![Bastion](evidencias/bastion.png) |
| AD DS configurado | ![AD DS](evidencias/ad-ds.png) |
| Amazon FSx for Windows File Server | ![FSx](evidencias/fsx.png) |
| Compartilhamento FSx mapeado no Windows | ![FSxMap](evidencias/fsx-mapeado.png) |
| Grupo FSx-Users no AD | ![Users](evidencias/grupo-users.png) |
| Grupo FSx-Admins no AD | ![Admins](evidencias/grupo-admins.png) |
| Usuário joao.silva acessando FSx | ![UserFSx](evidencias/user-fsx.png) |
| Usuário maria.admin gerenciando permissões | ![AdminFSx](evidencias/admin-fsx.png) |

---

## 📘 Recursos Recomendados

- [Amazon FSx for Windows File Server – Documentação Oficial](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/what-is.html)  
- [AWS Directory Service](https://docs.aws.amazon.com/directoryservice/)  
- [Active Directory Group Management](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/creating-managing-groups)  
- [Best Practices for Amazon FSx](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/best-practices.html)  
