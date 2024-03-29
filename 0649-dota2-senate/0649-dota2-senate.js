/**
 * @param {string} senate
 * @return {string}
 */
var predictPartyVictory = function(senate) {
    // Number of Senators of each party
    let rCount = 0, dCount = 0;
    
    //Floating Ban Count
    let dFloatingBan = 0, rFloatingBan = 0;
    
    //Queue of Senators
    let q = [];
    for(let i = 0;i < senate.length;i++){
        q.push(senate[i]);
        if(senate[i]=='R')rCount++;
        else dCount++;
    }
    
    //while any party has eligible Senators
    while(rCount > 0 && dCount > 0){
        
        //Pop the senator with turn
        let curr = q.shift();
        
        //If eligible, float the ban on the other party, enqueue again.
        //If not, decrement the floating ban and count of the party.
        if(curr == 'D'){
            if(dFloatingBan > 0){
                dFloatingBan--;
                dCount--;
            }else{
                rFloatingBan++;
                q.push('D');
            }
        }else{
            if(rFloatingBan > 0){
                rFloatingBan--;
                rCount--;
            }else{
                dFloatingBan++;
                q.push('R');
            }
        }
    }
    
    //Return the party with eligible Senators
    return rCount > 0 ? "Radiant" : "Dire";
};