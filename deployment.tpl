apiVersion: v1
kind: Service
metadata:
  name: {app_name}
  namespace: default
  labels:
    app: {app_name}
spec:
  type: NodePort
  ports:
  - port: {port}
    targetPort: {port}
    nodePort: {node_port}
  selector:
    app: {app_name}

---

apiVersion: apps/v1
kind: Deployment
metadata:
  name: {app_name}
spec:
  replicas: {replicas_num}
  selector:
    matchLabels:
      app: {app_name}
  template:
    metadata:
      labels:
        app: {app_name}
    spec:
      containers:
      - name: {app_name}
        image: {docker_img_name}
        imagePullPolicy: Always 
