# Lookup kubernetes subjects based on RBAC
# Usage:
#   rbac-lookup  # to list all subjects to a rolebinding or clusterrolebinding
#   rbac-lookup builder  # list all {role,clusterrole}bindings where builder is a subject

function rbac-lookup
	if test "$argv"
		kubectl get rolebindings,clusterrolebindings \
		  --all-namespaces  \
		  -o custom-columns=(string join0 'KIND:kind,NAMESPACE:metadata.namespace,NAME:metadata.name,SUBJECT:subjects[?(@.name=="'"$argv"'")].name') | grep -v '<none>'
	else
		kubectl get rolebindings,clusterrolebindings \
		  --all-namespaces  \
		  -o custom-columns='KIND:kind,NAMESPACE:metadata.namespace,NAME:metadata.name,SUBJECT:subjects[].name'
	end
end
