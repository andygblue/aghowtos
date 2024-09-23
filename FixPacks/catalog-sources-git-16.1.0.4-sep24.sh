# Download and apply catalog sources
# Updated for CP4I 16.1.0.4 September Fixpack 
# Reference for versions in CP4I Docs here: https://www.ibm.com/docs/en/cloud-paks/cp-integration/16.1.0?topic=images-adding-catalog-sources-cluster
# Note that you will need to be logged into your cluster through `oc login login <openshift_url> -u <username> -p <password> -n <namespace>`

#This uses the updated and simplified method of applying catalog sources from Sept '24

# IBM CP4I Operator 16.1.0.4 fixpack updated
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-integration-platform-navigator/7.3.4/OLM/catalog-sources.yaml

# IBM Automation Assets - update to 1.7.3
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-integration-asset-repository/1.7.3/OLM/catalog-sources-linux-amd64.yaml

# IBM API Connect
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-apiconnect/5.2.0/OLM/catalog-sources.yaml

# IBM App Connect 12.0.4 Fixpack - update to 12.0.4
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-appconnect/12.0.4/OLM/catalog-sources.yaml

# IBM MQ - update to operator 3.2.4
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-mq/3.2.4/OLM/catalog-sources.yaml

# IBM Event Streams - upgrade to 3.5.0
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-eventstreams/3.5.0/OLM/catalog-sources.yaml

# IBM Event Endpoint Management (EEM)
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-eventendpointmanagement/11.3.0/OLM/catalog-sources.yaml

# IBM DataPower Gateway - Update to 1.11.2
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-datapower-operator/1.11.2/OLM/catalog-sources.yaml

# IBM Aspera HSTS
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-aspera-hsts-operator/1.5.13/OLM/catalog-sources.yaml

#IBM Operator for Redis - only needed if you want to install Aspera
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-cloud-databases-redis/1.6.11/OLM/catalog-sources.yaml

# IBM Cloud Pak foundational services - update to 4.6.6
oc apply --filename https://raw.githubusercontent.com/IBM/cloud-pak/master/repo/case/ibm-cp-common-services/4.6.6/OLM/catalog-sources.yaml

# Check that all of the catalog sources are applied correctly

oc get catalogsource -n openshift-marketplace
