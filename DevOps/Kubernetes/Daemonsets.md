Jobs in k8s
-----------

* Batch jobs: run for some period of time and go to completed state `(Job)`
* Scheduled jobs: run periodically at a particular scheduleD time `(CronJob)`

Daemonsets
----------

[Refer here for official docs](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)

* The basic concept of daemonsets is _run a pod on some collection of nodes on all or some specific collection of nodes_
* Daemonsets support _rolling update_ (zero down time) like in the deployment 
* One usecase of daemonsets is to _run agents on every node or some specific nodes_
* If we want to run agents on pods, we use `side car containers`
* In daemonsets, if we increase the number of nodes, the number of pods also get increased accordingly
* In deployment, 
    * We speak about number of replicas
    * To increase the number of pods, we increase the replica count
* In daemonsets,
    * We deal with, on which set of nodes is the pod to be run
    * It is not about scaling, but it is like an agent kind of usecase
    * To increase the number of pods, there is no way for replication, instead we need to increase the number of nodes
* `Pods` belong to a namespace whereas `nodes` do not belong to any namespace

```bash
# to get the CPU and memory usage of nodes running
kubectl top node

# to get the CPU and memory usage of pods running
kubectl top pod

# to get the CPU and memory usage of pods running in default namespace
kubectl top pod -n default

```

