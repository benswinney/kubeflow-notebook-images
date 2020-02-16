# Kubeflow Notebook Images 

## Summary
This repo hosts a set of multi-arch images to be run as notebook servers on kubeflow. The images are based on the (IBM Powerai images)[https://hub.docker.com/r/ibmcom/powerai]

## Naming Convention
This repo follows the naming convention layed out by the (IBM Powerai Docker repoistory)[https://hub.docker.com/r/ibmcom/powerai]. 

Dockerfile-<powerai-version>-<framework>-<cpu>-<python>-<architecture>

powerai-version - The version of PowerAI installed in image latest is 1.6.2
Available options - 1.6.2, 1.6.2ea (early access)

framework - The framework installed on the image, (options vary depending on image version)
Available options - all, tensorflow(>=1.6.0), tensorflow-serving (>=1.6.1), pytorch(>=1.6.0), caffe(>=1.6.0), snapml(>=1.6.0, ppc64le only), xgboost(>=1.6.1, ppc64le only, >=1.6.2, x86_64 and ppc64le), rapids (>=1.6.2, ppc64le only)


python - The python version used by frameworks
Available options - py36(>=1.6.2), py37 (>=1.6.2)

architecture - Images are built to support x86_64 and ppc64le architectures (options vary depending on image version)
Available options - ppc64le, x86_64

examples
Dockerfile-1.6.2-all-py37-ppc64le #Docker image that builds all (including rapids) frameworks for python37 on ppc64le


