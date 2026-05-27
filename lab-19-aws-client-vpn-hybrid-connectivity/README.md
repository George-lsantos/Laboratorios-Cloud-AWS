# 🔐 Laboratório AWS Client VPN + Hybrid Connectivity

Este laboratório demonstra a implementação de conectividade segura entre usuários remotos e ambientes AWS utilizando o AWS Client VPN integrado a múltiplas VPCs através do AWS Transit Gateway.

A solução foi construída seguindo boas práticas de:

- Segurança
- Conectividade híbrida
- Administração centralizada
- Controle de acesso
- Monitoramento de conexões VPN

---

# 🏗️ Arquitetura

![Arquitetura](evidencias/arquitetura-client-vpn.png)

---

# 🚀 Serviços AWS Utilizados

## 🌐 Rede e conectividade
- AWS Client VPN
- Amazon VPC
- AWS Transit Gateway
- Route Tables
- Authorization Rules

## 📊 Monitoramento
- Amazon CloudWatch Logs

## 🔐 Segurança
- Regras de autorização
- Controle de rotas
- Acesso privado às redes internas

---

# 📌 Objetivo do Laboratório

O objetivo deste projeto foi implementar:

- Acesso remoto seguro à AWS
- Conectividade híbrida
- Comunicação entre múltiplas VPCs
- Gerenciamento centralizado de rotas
- Monitoramento de conexões VPN

---

# 🔄 Fluxo da Solução

Usuário → AWS VPN Client → AWS Client VPN Endpoint → Transit Gateway → VPCs privadas

O AWS Client VPN permite acesso seguro aos ambientes internos utilizando criptografia e controle de autorização baseado em regras de rede.

---

# 🔐 Segurança Implementada

- Acesso autenticado via AWS Client VPN
- Rotas privadas através do Transit Gateway
- Regras de autorização por CIDR
- Logs centralizados no CloudWatch
- Ambientes privados sem exposição pública

---

# 📷 Evidências

| Componente | Screenshot |
|------------|------------|
| CloudWatch Logs | ![CloudWatch](evidencias/cloudwatch-vpn.png) |
| VPN Connections | ![VPN Connections](evidencias/vpn-connections.png) |
| AWS VPN Client | ![VPN Client](evidencias/aws-vpn-client.png) |
| Route Table | ![Route Table](evidencias/route-table.png) |
| Authorization Rules | ![Authorization Rules](evidencias/authorization-rules.png) |
| Target Network Associations | ![Target Associations](evidencias/target-network-associations.png) |

---

# 📷 Evidência: VPN Conectada

O cliente AWS VPN Client conectou com sucesso ao endpoint AWS Client VPN permitindo acesso seguro aos ambientes privados.

![VPN Client](evidencias/aws-vpn-client.png)

---

# 📷 Evidência: Logs no CloudWatch

Os logs de conexão VPN foram enviados corretamente ao Amazon CloudWatch Logs permitindo auditoria e monitoramento das conexões.

![CloudWatch Logs](evidencias/cloudwatch-vpn.png)

---

# 📷 Evidência: Rotas Privadas

As rotas foram propagadas corretamente através do Transit Gateway permitindo acesso entre ambientes internos.

![Route Table](evidencias/route-table.png)

---

# 📷 Evidência: Authorization Rules

As regras de autorização foram configuradas permitindo acesso controlado às redes privadas.

![Authorization Rules](evidencias/authorization-rules.png)

---

# ✅ Resultado Final

Infraestrutura segura de conectividade híbrida utilizando AWS Client VPN com:

- Acesso remoto seguro
- Integração entre múltiplas VPCs
- Monitoramento centralizado
- Controle de acesso por regras
- Conectividade privada

---

# 🎯 Conceitos Aplicados

- AWS Client VPN
- Transit Gateway
- Hybrid Connectivity
- Route Propagation
- Authorization Rules
- CloudWatch Logs
- Network Security

---

# 👨‍💻 Autor

Projeto criado para fins de estudo e prática em arquitetura de redes e conectividade segura na AWS.