# Download and apply catalog sources
# Updated for CP4I 16.1.1.5  May Fixpack 
# Reference for versions in CP4I Docs here: https://www.ibm.com/docs/en/cloud-paks/cp-integration/16.1.1?topic=images-adding-catalog-sources-cluster
# Note that you will need to be logged into your cluster through `oc login login <openshift_url> -u <username> -p <password> -n <namespace>`

#This uses the updated and simplified method of applying catalog sources from Sept '24

# IBM CP4I Operator 16.1.1.5 May fixpack updated
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-integration-platform-navigator/8.0.5/OLM/catalog-sources.yaml

# IBM Automation Assets - update to 1.8.4
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-integration-asset-repository/1.8.4/OLM/catalog-sources-linux-amd64.yaml

# IBM API Connect
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-apiconnect/6.0.0/OLM/catalog-sources.yaml

# IBM App Connect 12.7.0 Fixpack - update to 12.10.1
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-appconnect/12.10.1/OLM/catalog-sources.yaml

# IBM MQ - update to operator 3.5.2 and pick up MQ HA CRR
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-mq/3.5.2/OLM/catalog-sources.yaml

# IBM Event Streams - upgrade to 3.7.0
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-eventstreams/3.7.0/OLM/catalog-sources.yaml

# IBM Event Endpoint Management (EEM) - update to EEM 11.5.1
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-eventendpointmanagement/11.5.1/OLM/catalog-sources.yaml

# IBM Event Processing - update to 1.3.2
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-eventprocessing/1.3.2/OLM/catalog-sources.yaml

# IBM Operator for Apache Flink to 1.3.2
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-eventautomation-flink/1.3.2/OLM/catalog-sources.yaml

# IBM DataPower Gateway - Update to 1.14.1
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-datapower-operator/1.14.1/OLM/catalog-sources.yaml

# IBM Aspera HSTS 1.5.18
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-aspera-hsts-operator/1.5.18/OLM/catalog-sources.yaml

#IBM Operator for Redis - only needed if you want to install Aspera
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-cloud-databases-redis/1.6.11/OLM/catalog-sources.yaml

# IBM Cloud Pak foundational services - update to 4.6.13
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-cp-common-services/4.6.13/OLM/catalog-sources.yaml

# Check that all of the catalog sources are applied correctly

oc get catalogsource -n openshift-marketplace
