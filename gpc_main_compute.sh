gcloud compute instances create xqcloud \
    --project=xqzero \
    --zone=us-central1-f \
    --machine-type=n1-standard-2 \
    --network-interface=network-tier=PREMIUM,subnet=default \
    --maintenance-policy=TERMINATE \
    --provisioning-model=STANDARD \
    
--service-account=69846585020-compute@developer.gserviceaccount.com \
    --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append \ 
    --tags=http-server,https-server \
    --create-disk=auto-delete=yes,boot=yes,device-name=xqcloud,image=projects/ubuntu-os-cloud/global/images/ubuntu-2204-jammy-v20230214,mode=rw,size=50,type=projects/xqzero/zones/us-central1-f/diskTypes/pd-balanced \
--create-disk=device-name=xqzerocloud-tank1,mode=rw,name=xqzerocloud-tank1,size=250,type=projects/xqzero/zones/us-central1-f/diskTypes/pd-balanced \
    --no-shielded-secure-boot \
    --shielded-vtpm \
    --shielded-integrity-monitoring \
    --reservation-affinity=any
