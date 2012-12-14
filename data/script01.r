
pesquisaContribuicao <- read.delim("~/Downloads/soc/qos-at-soc/data/pesquisaContribuica.cvs", header=T)

attach(pesquisaContribuicao)

par(mar=c(12,3,1,1)+1)

symbols(Contribuicao, TipoPesquisa, circles=Quantidade,inches=0.40,axes=FALSE, xlab="", ylab="")

axis(side=1, at=0:8, labels=c("", levels(Contribuicao)),las=2)
axis(side=2, at=0:4, labels=c("", levels(TipoPesquisa)))

text(Contribuicao, TipoPesquisa, rownames(Quantidade), cex=0.6)

xs <- c(0:length(levels(TipoPesquisa)))

for(i in xs){ 
 lines(x=xs, y=replicate(n=length(xs), i))
}

p <- ggplot(pesquisaContribuicao, aes(TipoPesquisa,Contribuicao,size=Quantidade, label=Quantidade))
p <- p+geom_point(colour="lightgray") + scale_area(to=c(1,30))+geom_text(size=5)
p + ylab("") + xlab("") + theme_bw()






pesquisaContexto <- read.delim("~/Downloads/soc/qos-at-soc/data/pesquisaContexto.data")

p <- ggplot(pesquisaContexto, aes(TipoPesquisa,Contexto,size=Quantidade, label=Quantidade))
p <- p+geom_point(colour="lightgray") + scale_area(to=c(1,30))+geom_text(size=5)
p + ylab("") + xlab("") + theme_bw()

contribuicaoContexto <- read.delim("~/Downloads/soc/qos-at-soc/data/contribuicaoContexto.data")

p <- ggplot(contribuicaoContexto, aes(Contribuicao,Contexto,size=Quantidade, label=Quantidade))
p <- p+geom_point(colour="lightgray") + scale_area(to=c(1,30))+geom_text(size=5)
p + ylab("") + xlab("") + theme_bw()


