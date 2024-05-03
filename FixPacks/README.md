# Applying Fixpacks

Cloud Pak for Integration provides regular fixes and security updates.

Using OpenShift and Operators, these are easy to apply but if you are using individual catalog sources to control how updates are deployed, you'll need to update the catalog sources to the latest versions when the new ones are released

The CP4I documentation tells you which versions to use and documents the procedure very well - see here: https://www.ibm.com/docs/en/cloud-paks/cp-integration/2023.4?topic=images-adding-catalog-sources-cluster

As there are a number of operators, if you are demo-ing or experimenting, you might want to say 'just install all of them'

You can use the IBM Operator Catalog, or if you want to use the individual catalogs for more granular control (recommended) then I've built some scripts

(Again, no warranty, no endorsement, use at your own risk etc)

[CP4I 2023.4.1 April FixPack](catalog-sources-2023.4.1-April.sh)
