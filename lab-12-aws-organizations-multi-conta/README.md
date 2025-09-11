# 🌐 Laboratório AWS Organizations

## 🎯 Objetivo
Este laboratório demonstra a simulação de gerenciamento centralizado de **duas contas AWS** utilizando o **AWS Organizations**.  
Foram aplicadas **boas práticas** na construção de *Organizational Units (OUs)*, *Service Control Policies (SCPs)* e *Tag Policies* para garantir **segurança, governança e padronização**.

---

## 🏗️ Arquitetura

Abaixo está a representação da estrutura organizacional criada no laboratório:

![Organizational Structure](evidencias/Diagrama.png)

---

## 🛠️ Tarefas Realizadas

1. **Convite de Contas**  
   - Envio de *invite* para duas contas AWS externas.  

2. **Criação de OUs (Organizational Units)**  
   - OU `Empresa A` → subdividida em: `Dev`, `Prod`, `Sandbox`.  
   - OU `Empresa B` → subdividida em: `Infrastructure`, `Prod`, `Sandbox`, `Security`.  

3. **Políticas de Tags (Tag Policies)**  
   - Criada política que **bloqueia a criação de recursos sem TAG** obrigatória.  
   - Valores aceitos: `dev`, `prod`, `hml`.  

4. **Service Control Policies (SCPs)**  
   - Exemplo aplicado: **negar criação de buckets S3 fora da região `us-east-1`**.  

5. **Ativação do AWS Cost Explorer**  
   - Cada conta pode visualizar seu **uso e custo** através do painel central.  

---

## ✅ Resultados Esperados

- Estrutura organizacional com separação clara por **empresa** e **ambiente**.  
- Governança garantida por meio de **SCPs** e **Tag Policies**.  
- Contas subordinadas com **restrição regional de recursos**.  
- Maior visibilidade de custos por **conta** e **ambiente**.  

---

## 📷 Evidências de Configuração

| Componente                | Screenshot                              |
|----------------------------|------------------------------------------|
| Convites de contas         | ![Invitations](evidencias/Invitations.png) |
| Organizational Structure   | ![OU](evidencias/OU.png)                  |
| Tag Policies               | ![Tag policies](evidencias/TAG.png)       |
| Service Control Policy     | ![SCP](evidencias/SCP.png)                |
| AWS Cost Explorer          | ![Cost](evidencias/Cost.png)              |

---

## 📘 Recursos Recomendados

- [AWS Organizations – Documentação Oficial](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html)  
- [Melhores práticas de AWS Organizations](https://docs.aws.amazon.com/organizations/latest/userguide/best-practices.html)  
- [Tag Policies – AWS Docs](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html)  
- [Service Control Policies – AWS Docs](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scps.html)  

---

## 🧠 Observações

- O laboratório pode ser expandido com:  
  - **Múltiplas contas** para times diferentes.  
  - Integração com **AWS Control Tower**.  
  - Conexões híbridas com **Direct Connect** ou **VPNs on-premises**.  
- Também é possível aplicar **estratégias de FinOps** para otimização de custos entre contas.  

---
