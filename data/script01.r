library(ggplot2)
contribuicaoContexto <- read.delim("~/Dropbox/QoS-SOC/Manuscript/SBCARS2013/data/contribuicaoContexto.data", header=T)

attach(contribuicaoContexto)

p <- ggplot(contribuicaoContexto, aes(Contribuicao,Contexto,size=Quantidade, label=Quantidade))
p <- p+geom_point(colour="lightgray") + scale_size_area(max_size=20) + geom_text(size=5)
p + ylab("") + xlab("") + theme_bw()

pesquisaContexto <- read.delim("~/Dropbox/QoS-SOC/Manuscript/SBCARS2013/data/pesquisaContexto.data", header=T)

p <- ggplot(pesquisaContexto, aes(TipoPesquisa,Contexto,size=Quantidade, label=Quantidade))
p <- p+geom_point(colour="lightgray") + scale_size_area(max_size=20) + geom_text(size=5)
p + ylab("") + xlab("") + theme_bw()




