sudo apt-get update && sudo apt-get install ansible -y

sh -c "$(curl -sSfL https://release.solana.com/v1.17.16/install)"
export PATH="/root/.local/share/solana/install/active_release/bin:$PATH"

cd autoclock-rpc

time ansible-playbook runner.yaml

solana catchup --our-localhost
