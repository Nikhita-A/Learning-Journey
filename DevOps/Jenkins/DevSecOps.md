DevSecOps
---------

* In security scanning, there are two important terms
    * `attack surface`: where your system was being attacked. For example: if we run the application as a root user, the system might get attacked
    * `attack vector`: how did the attackers reach there

* In security, there will be two teams:
    * Red security team 
    * Blue security team
* Red security team tries to `attack` the system and Blue security team tries to `defend`
* Ideally Red security team should win which means that the `defence mechanism` should be strong enough
* These teams come into play probably in the UAT environment and notify about the security issues
* If there are any serious issues, we need to re-work on the code which delays the deployment process
* So to solve this, `DevSecOps` came into play i.e., scanning the code for any vulnerabilities as a part of the CI/CD pipeline itself

### Penetration tests, CVE and OWASP

* If security testing is automated, it is called `penetration testing`. 
* We will try to run the _penetration testing_ and share the `test results`
* The _test results_ will show the `CVE (Common Vulnerabilities and Exposures)` number
* CVE number relates to some issue that was published there
    * CVE is a glossary that classifies vulnerabilities. 
    * The glossary analyzes vulnerabilities and then uses the Common Vulnerability Scoring System (CVSS) to evaluate the threat level of a vulnerability.
* `OWASP (Open Web Application Security Project)`:
    * OWASP is an international non-profit organization dedicated to web application security.
    * The `OWASP Top 10` is a regularly-updated report outlining security concerns for web application security, focusing on the 10 most critical risks. T
* In summary, _CVE_ is a database of known vulnerabilities, while _OWASP_ is a community that provides resources and guidance for web application security.


### SAST, DAST and SCA

* From `DevSecOps`, we will perform _three_ kinds of tests
    * SAST: `Static Application Security Testing`
        * Security testing without running the application (code scan, image scan etc..)
    * DAST: `Dynamic Application Security Testing`
        * Security testing while the application is running (penetration tests, checking k8s for vulnerabilities, kubescape etc..)
    * SCA: `Software Composition Analysis` 
        * Scanning dependencies of the application (SonarQube)
