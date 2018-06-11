
source("../common.r")

data = jmhCSV("string.csv")

data = data[,grep("^(Benchmark|Score|Error|bufferType)$", colnames(data))] # keep only these columns

g = jmhBarChart(data, "bufferType", "Buffer type", "Operation", "Operations per second", "StringBenchmark")

if (!rstudio) png("string.png", 1024, 445)
grid.arrange(g)
