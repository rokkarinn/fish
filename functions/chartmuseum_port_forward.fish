function chartmuseum_port_forward
  export POD_NAME=(kubectl get pods --namespace chartmuseum -l "app=chartmuseum" -l "release=icelandair" -o jsonpath="{.items[0].metadata.name}")
  echo http://127.0.0.1:8080/
  kubectl port-forward $POD_NAME 8080:8080 --namespace chartmuseum
end

