Pod Scheduling
--------------

### Assigning pods to nodes  

[Refer here for official docs](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/)

* A Pod goes into `pending state` when the scheduler has not assigned any node

* nodeSelector: 
    * assign pod to a node which matches particular labels (pod chooses the node)
* nodeName: 
    * scheduling pod based on the name of node
* Pod Affinity: 
    * Choosing the pod based on other pod's location is present based on topology(other external factors like nodes, availability zones, disk type etc..) using labels 
* Pod Anti-affinity: 
    * Choosing the pod based on other pod's location is __NOT__ present
* Node Affinity: 
    * It is almost like nodeSelector but the rules of nodeAffinity are flexible and not that rigid as nodeSelector
* taints and tolerations: 
    * There has to be a matching toleration for a taint. 
    * For example, if a node 'A' has a `taint=NoSchedule` no pod can be scheduled on this node 'A' unless and untill that pod has a `toleration=NoSchedule`  (node chooses the pod)
* priorityClass: 
    * We define pods with some priority level using `priorityClass` and when there is a situation to remove the pods, the _scheduler_ first removes the low priority pods and then the medium priority pods and then the higher ones