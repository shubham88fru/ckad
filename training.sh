source <(kubectl completion bash) # setup autocomplete in bash into the current shell, bash-completion package should be installed first.
echo "source <(kubectl completion bash)" >> ~/.bashrc # add autocomplete permanently to your bash shell.

alias k=kubectl
complete -o default -F __start_kubectl k

# short alias to set/show context/namespace (only works for bash and bash-compatible shells, current context to be set before using kn to set namespace) 
alias kx='f() { [ "$1" ] && kubectl config use-context $1 || kubectl config current-context ; } ; f'
alias kn='f() { [ "$1" ] && kubectl config set-context --current --namespace $1 || kubectl config view --minify | grep namespace | cut -d" " -f6 ; } ; f'


alias kga="kubectl get all"
export do = "--dry-run=client -o yaml"
export kfc="kubectl apply -f"
export kcn="kubectl config get-contexts"

#to execute the bash changes
. .bashrc


--------------------------------

alias k=kubectl
source <(kubectl completion bash) # setup autocomplete in bash into the current shell, bash-co
echo "source <(kubectl completion bash)" >> ~/.bashrc # add autocomplete permanently to your b
complete -o default -F __start_kubectl k
# short alias to set/show context/namespace (only works for bash and bash-compatible shells, c
alias kx='f() { [ "$1" ] && kubectl config use-context $1 || kubectl config current-context ; 
alias kn='f() { [ "$1" ] && kubectl config set-context --current --namespace $1 || kubectl con
alias kcn="kubectl config get-contexts"
export kaf="kubectl apply -f"
export kdf="kubectl delete -f"
export do="--dry-run=client -o yaml"

--------------------------------
