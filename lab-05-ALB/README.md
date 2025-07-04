# 🧪 Laboratório AWS: Load Balancer

Este laboratório demonstra a criação de uma infraestrutura escalável e tolerante a falhas usando serviços da AWS: EC2, AMI, Launch Template, Target Group e Load Balancer.

---
## 🔧 Etapas Realizadas

1. **Criação de uma AMI personalizada** com Apache instalado via script `user_data.sh`.
2. **Launch Template** criado com base na AMI.
3. **Security Groups**: SG do Load Balancer: permite HTTP/HTTPS de `0.0.0.0/0` e SG das EC2: permite HTTP/HTTPS **apenas do SG do Load Balancer**
4. **Application Load Balancer (ALB)** criado e integrado ao Target Group.
5. **Target Group** para registrar as instâncias EC2 automaticamente.
6. **Testes e validações** de balanceamento de carga e escalabilidade.
7. **Application Load Balancer (ALB)** criado e integrado ao Target Group.
8. **Auto Scaling Group** configurado com políticas de escala mínima, máxima e desejada.
9. **Target Group** para registrar as instâncias EC2 automaticamente.
10. Testes e validações de balanceamento de carga e escalabilidade.

## 📷 Evidências

| Componente | Screenshot |
|-----------|------------|
| 1. **Criação de uma AMI personalizada**| ![AMI](evidencias/AMI.png) |
| 2. **Launch Templates**  | ![AMI](evidencias/Launch.png) |
| 3. **Security Groups**  | ![AMI](evidencias/sg.png) |
| 4. **Application Load Balancer (ALB)**  | ![AMI](evidencias/alba.png) |
| 5. **Target Group**  | ![AMI](evidencias/tg.png) |
| 6. **Validação do Balanceamento 1**  | ![AMI](evidencias/teste1.png) |
| 7. **Validação do Balanceamento 2**  | ![AMI](evidencias/teste2.png) |


## 🧠 Arquitetura

![Diagrama de Arquitetura](arquitetura.png)
