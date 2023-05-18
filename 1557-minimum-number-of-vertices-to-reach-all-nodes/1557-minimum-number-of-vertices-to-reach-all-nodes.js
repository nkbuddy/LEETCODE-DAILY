/**
 * @param {number} n
 * @param {number[][]} edges
 * @return {number[]}
 */
var findSmallestSetOfVertices = function(n, edges) {
    const isIncomingEdgeExists = new Array(n).fill(false);
    
    for(const edge of edges){
        isIncomingEdgeExists[edge[1]]=true;
    }
    
    const requiredNodes = [];
    for(let i=0;i<n;i++){
        if(!isIncomingEdgeExists[i]){
            requiredNodes.push(i);
        }
    }
    
    return requiredNodes;
};