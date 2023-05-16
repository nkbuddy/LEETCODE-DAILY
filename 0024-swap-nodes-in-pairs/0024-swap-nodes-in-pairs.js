/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} head
 * @return {ListNode}
 */
var swapPairs = function(head) {
     const dummy = new ListNode(-1);
  dummy.next = head;

  let prevNode = dummy;

  while (head !== null && head.next !== null) {
    // Nodes to be swapped
    const firstNode = head;
    const secondNode = head.next;

    // Swapping
    prevNode.next = secondNode;
    firstNode.next = secondNode.next;
    secondNode.next = firstNode;

    // Reinitializing the head and prevNode for next swap
    prevNode = firstNode;
    head = firstNode.next; // jump
  }

  // Return the new head node.
  return dummy.next;
};