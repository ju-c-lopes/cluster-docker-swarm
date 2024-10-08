# Projeto DIO Cluster Docker Swarm utilizando Vagrant

> O desafio proposto foi de criar máquinas virtuais com Docker Swarm, onde:
* Tenha uma máquina master que gerencia o cluster
* Pelo menos uma máquina worker como um nó a ser gerenciado pelo master
* As máquinas tenham IP fixo

> Buscando aperfeiçoar, criei um volume compartilhado entre as máquinas e criei um serviço replicando 15 containers. Para montagem da pasta compartilhada entre os nós, usamos o pacote nfs.

> Tudo foi definido no *Vagrantfile*

> **OBS:** Há pontos para melhorar, tal como a criação do serviço do servidor apache no **nó master** após os *nós workers* serem criados e estiverem rodando.

> A ordem de execução do *Vagrantfile* não segue o fluxo sequencial, sendo assim, não consegui distribuir os containers compartilhados entre os nós, ele distribui somente se reiniciar o cluster depois de criado.

> **ACEITO SUGESTÕES DE MELHORIA**, seria muito grato pela colaboração.

**OBS:** Os IPs fixos foram definidos para minha rede, e após o cluster ser criado, é possivel acessar a página HTML rodando no cluster acessando o endereço de IP na porta 80.
