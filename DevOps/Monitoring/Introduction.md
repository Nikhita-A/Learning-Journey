Monitoring
----------

* Thr objective of Monitoring is to have a `high` MTTF (Mean Time To Failure) and a `low` MTTR (Mean Time To Recover)

### Proactive and Reactive approach

* There are two approches to figure out issues and respond in the cases of failures
    * `Proactive Approach`: A Proactive Approach involves takking anticipatory actions to prevent problems or capitalize on opportunities before they occur.
    * `Reactive Approach`: A reactive approach involves responding to situations or problems after they have occurred.

### Single Point Of Failure (SPOF)

* An component or server which alone is responsible for doing something. 
* SPOF refers to one fault or malfunction that can cause an entire system to stop operating.
* This is generally solved by redundancy or replication
    * `Redundancy`:
        * Redundancy is the process of providing multiple paths for traffic so that data can keep flowing even in the event of a failure. 
        * Put simply: more redundancy equals more reliability. 
        * Redundancy refers to having two (or more) servers with duplicate or mirrored data.
    * `Fault Tolerance`:
        * Ability fo system to deal with faults is called as Fault Tolerance.
        * Fault tolerance is a process that enables an operating system to respond to a failure in hardware or software. 
        * It refers to the system's ability to continue operating despite failures or malfunctions.
    * _Fault tolerance_ helps ensure that the core business operations stay connected and available online, whereas _Redundancy_ concerns the duplication of hardware and software resources.

### Four Golden Signals of Monitoring

* __LETR__: Latency, Error rate,  Traffic, Resource saturation

[Refer here for Four Golden Signals](https://www.gremlin.com/blog/four-golden-signals/)

### Three pillars (Golden Triangle △) of Observability

* Metrics
    * Metrics, used in traditional monitoring, are numerical records of different parts of the system. 
* Logs
    * Logs record historical events.
* Traces
    * Traces provide visibility into how requests behave as they move throughout the entire system. 

[Refer here for Logs, Metrics and Traces in detail](https://directdevops.blog/2023/09/13/devops-classroomnotes-13-sep-2023/)


Observability
-------------

* Observability of a system is the ability to monitor your system to discover and diagnose problems as they occur. 
* Observability requires the system to record and maintain the various states and changes in the system for any review and analysis, when required.

### Monitoring vs Observability

* Monitoring is a solution that collects and analyzes predetermined data pulled from individual systems. 
* Observability is a solution that aggregates all data produced by all IT systems.