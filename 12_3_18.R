box <- c("B","N","N","V")
print(box)

getOccourences <- function(color) {
    v <- vector()
    for (c in color) {
       v[c] = v[c]*1
    }
    print(v)
    totalMul <- 1
    for (occ in v) {
       totalMul = totalMul*occ
    }
    return(totalMul)
}

getOccourences("N")