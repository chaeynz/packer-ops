set -a
source .env
set +a

packer build -force \
  --only vsphere-iso.linux-debian \
  --var-file="config/common.pkrvars.hcl" \
  --var-file="config/config.pkrvars.hcl" \
  --var-file="config/linux-debian-12.pkrvars.hcl" \
  --var-file="config/linux-storage.pkrvars.hcl" \
  builds/linux/debian/12
