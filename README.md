
Installing 3scale 2.6 on openshift using a Template :

PreRequisites:
1. Supported Openshift installed.
2. Attach nodes with 3scale subscription:
    a. List all subscriptions:
        # subscription-manager list --available --matches '*3scale*'
    b. In the output for the previous command, find the pool ID for an 'Red Hat 3scale API Management Platform' subscription and attach it: 
        # subscription-manager attach --pool=<pool_id>
3. Enable 3scale repositories:
  # subscription-manager repos --enable=rhel-7-server-3scale-amp-2.6-rpms
4. Install the 3scale template called 3scale-amp-template. This will be saved at /opt/amp/templates
  # sudo yum install 3scale-amp-template
5. Access to the Red Hat container catalog. 
6. A domain that resolves to your OpenShift cluster. 
7. 3 RWO and 1RWX persistent storage to create 
8. SMTP server (optional)