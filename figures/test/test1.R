library(treeio)
library(ggtree)

tree <- read.tree(file="simple.newick")
foo <- ggtree(tree) + geom_tiplab() + hexpand(0.10)

#pdf("simpletree.pdf",width=3,height=2)
#print(foo)
#dev.off()
ggsave("simple-tree.pdf",foo,width=3,height=2,units="in")
ggsave("simple-tree.png",foo,width=3,height=2,units="in")