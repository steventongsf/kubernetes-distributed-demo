status:
	kubectl get deployments
	kubectl get services
	kubectl get pods
build:
	docker build -t steventongsf/kub-demo-users:latest users-api/
	docker push steventongsf/kub-demo-users:latest
	docker build -t steventongsf/kub-demo-auth:latest auth-api/
	docker push steventongsf/kub-demo-auth:latest
	docker build -t steventongsf/kub-demo-tasks:latest tasks-api/
	docker push steventongsf/kub-demo-tasks:latest
	docker build -t steventongsf/kub-demo-frontend:latest frontend/
	docker push steventongsf/kub-demo-frontend:latest
delete: delete_deployments delete_services
delete_deployments:
	kubectl delete deployment auth-deployment
	kubectl delete deployment users-deployment
	kubectl delete deployment tasks-deployment
	kubectl delete deployment frontend-deployment
delete_services:
	kubectl delete service auth-service
	kubectl delete service users-service
	kubectl delete service tasks-service
	kubectl delete service frontend-service
deploy:
	kubectl apply -f ./kubernetes/host-pv.yaml
	kubectl apply -f ./kubernetes/host-pvc.yaml
	kubectl apply -f ./kubernetes/auth-deployment.yaml
	kubectl apply -f ./kubernetes/users-deployment.yaml
	kubectl apply -f ./kubernetes/tasks-deployment.yaml
	kubectl apply -f ./kubernetes/frontend-deployment.yaml
	kubectl apply -f ./kubernetes/auth-service.yaml
	kubectl apply -f ./kubernetes/users-service.yaml
	kubectl apply -f ./kubernetes/tasks-service.yaml
	kubectl apply -f ./kubernetes/frontend-service.yaml
