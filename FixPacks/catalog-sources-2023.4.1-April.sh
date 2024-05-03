# Download and apply catalog sources
# Updated for CP4I 2023.4.1 April Fixpack
# Reference for versions in CP4I Docs here: https://www.ibm.com/docs/en/cloud-paks/cp-integration/2023.4?topic=images-adding-catalog-sources-cluster
# Note that you will need to be logged into your cluster through `oc login login <openshift_url> -u <username> -p <password> -n <namespace>` and you will also need to have the ibm-pak in your %PATH%.

#Set architecture to AMD64 - change this for Z
export ARCH=amd64

deploy_catalog_source(){

echo "Installing Catalog Source for Component: " ${OPERATOR_PACKAGE_NAME} " version "${OPERATOR_VERSION}
# download files for the operator
oc ibm-pak get ${OPERATOR_PACKAGE_NAME} --version ${OPERATOR_VERSION}
# generate the catalog source
oc ibm-pak generate mirror-manifests ${OPERATOR_PACKAGE_NAME} icr.io --version ${OPERATOR_VERSION}
# apply the catalog source to the cluster
oc apply -f ~/.ibm-pak/data/mirror/${OPERATOR_PACKAGE_NAME}/${OPERATOR_VERSION}/catalog-sources.yaml
# check for architecture-specific sources
oc apply -f ~/.ibm-pak/data/mirror/${OPERATOR_PACKAGE_NAME}/${OPERATOR_VERSION}/catalog-sources-linux-${ARCH}.yaml
}

# IBM CP4I Operator
export OPERATOR_PACKAGE_NAME=ibm-integration-platform-navigator
export OPERATOR_VERSION=7.2.4
deploy_catalog_source

# IBM Automation Assets
export OPERATOR_PACKAGE_NAME=ibm-integration-asset-repository
export OPERATOR_VERSION=1.6.4
deploy_catalog_source

# IBM API Connect
export OPERATOR_PACKAGE_NAME=ibm-apiconnect
export OPERATOR_VERSION=5.1.0
deploy_catalog_source

# IBM App Connect
export OPERATOR_PACKAGE_NAME=ibm-appconnect
export OPERATOR_VERSION=11.5.0
deploy_catalog_source

# IBM MQ
export OPERATOR_PACKAGE_NAME=ibm-mq
export OPERATOR_VERSION=3.1.2
deploy_catalog_source

# IBM Event Streams
export OPERATOR_PACKAGE_NAME=ibm-eventstreams
export OPERATOR_VERSION=3.3.2
deploy_catalog_source

# IBM Event Endpoint Management (EEM)
export OPERATOR_PACKAGE_NAME=ibm-eventendpointmanagement
export OPERATOR_VERSION=11.1.6
deploy_catalog_source

# IBM DataPower Gateway
export OPERATOR_PACKAGE_NAME=ibm-datapower-operator
export OPERATOR_VERSION=1.10.1
deploy_catalog_source

# IBM Aspera HSTS
export OPERATOR_PACKAGE_NAME=ibm-aspera-hsts-operator
export OPERATOR_VERSION=1.5.12
deploy_catalog_source

# IBM Cloud Pak foundational services
export OPERATOR_PACKAGE_NAME=ibm-cp-common-services
export OPERATOR_VERSION=4.6.1
deploy_catalog_source

# Check that all of the catalog sources are applied correctly

oc get catalogsource -n openshift-marketplace
