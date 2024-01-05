TLS
----

### SSL Passthrough (Secure Ingress)

* This is a secured approach as it passes `encrypted` traffic directly without decrypting at the loadbalancer but it has some drawbacks as well

![image4](https://github.com/Nikhita-A/Learning-Journey/assets/148535211/5705a4bc-f7d4-482e-bad8-7f34c1ad8b7f)


### SSL Offloading

* This is not at all secure approach as the data is `decrypted` and sent as `plain text`

![image5](https://github.com/Nikhita-A/Learning-Journey/assets/148535211/3d52dc47-c0f1-4dd9-8083-ef4118f15269)


### SSL Bridging

* This is the more secure approach as data is `decrypted` first and `re-encrypted` data is sent forward

![image6](https://github.com/Nikhita-A/Learning-Journey/assets/148535211/09750b5f-4e29-43ab-a7fe-6c204f2ecf58)


### Overview

![image7](https://github.com/Nikhita-A/Learning-Journey/assets/148535211/0ad8d638-37b5-4ade-8d71-91f2098da602)
