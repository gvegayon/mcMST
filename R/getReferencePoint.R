# @title Helper to approximate reference point for EMOA runs.
#
# @description Here we take the sum of the n largest edges (this is always an upper bound
# for each tree with (n-1) edges) in each objective.
# @param instance [\code{mcMST}]\cr
#   Problem instance
# @return [\code{numeric(2)}]
getReferencePoint = function(instance) {
  assertClass(instance, "mcGP")
  n = instance$n.nodes

  sapply(instance$weights, function(wmat) {
    sum(sort(as.numeric(wmat), decreasing = TRUE)[1:n])
  })
}
