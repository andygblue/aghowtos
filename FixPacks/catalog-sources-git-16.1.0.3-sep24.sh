# Download and apply catalog sources
# Updated for CP4I 16.1.0.3 August Fixpack 
# Reference for versions in CP4I Docs here: https://www.ibm.com/docs/en/cloud-paks/cp-integration/16.1.0?topic=images-adding-catalog-sources-cluster
# Note that you will need to be logged into your cluster through `oc login login <openshift_url> -u <username> -p <password> -n <namespace>`

#This uses the updated and simplified method of applying catalog sources from Sept '24

# IBM CP4I Operator 16.1.0.3 fixpack updated
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-integration-platform-navigator/7.3.3/OLM/catalog-sources.yaml

# IBM Automation Assets - update to 1.7.3
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-integration-asset-repository/1.7.3/OLM/catalog-sources-linux-amd64.yaml

# IBM API Connect
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-apiconnect/5.2.0/OLM/catalog-sources.yaml

# IBM App Connect 12.0.3 Fixpack
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-appconnect/12.0.3/OLM/catalog-sources.yaml

# IBM MQ - update to operator 3.2.3 August MQ 9.4.0
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-mq/3.2.3/OLM/catalog-sources.yaml

# IBM Event Streams
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-eventstreams/3.4.0/OLM/catalog-sources.yaml

# IBM Event Endpoint Management (EEM)
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-eventendpointmanagement/11.2.3/OLM/catalog-sources.yaml

# IBM DataPower Gateway - Update to 1.11.2
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-datapower-operator/1.11.2/OLM/catalog-sources.yaml

# IBM Aspera HSTS
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-aspera-hsts-operator/1.5.13/OLM/catalog-sources.yaml

# IBM Cloud Pak foundational services
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-cp-common-services/4.6.5/OLM/catalog-sources.yaml

# Check that all of the catalog sources are applied correctly

oc get catalogsource -n openshift-marketplace
