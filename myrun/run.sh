minikube stop;minikube delete;
minikube start --driver=docker;
kubectl create namespace clearml;
kubectl label nodes minikube app=clearml;
helm install allegroai/clearml-server-chart --namespace=clearml --generate-name --values values.yaml
#static installation
python3 k8s_glue_example.py --queue glue_q --base-pod-num 10

#Admin
minikube dashboard
ssh -N -f -L localhost:<dashboard_port>:127.0.0.1:<dashboard_port> med-hanifa@192.168.180.238

