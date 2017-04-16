# Prometheus Installation :

- Clone the repository
    ```
    $ git clone  https://github.com/ruben-nieva/prometheus.git
    $ cd prometheus
    ```
- Create project, servicesaccount and deploy prometheus from template
    ```sh
    $ oc new-project sample-project
    $ oc create serviceaccount metrics -n sample-project
    $ oc adm policy add-cluster-role-to-user cluster-reader system:serviceaccount:sample-project:metrics
    $ oc expose service prometheus --port=9090 -n sample-project
    ```

