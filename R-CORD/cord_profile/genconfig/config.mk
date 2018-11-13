# config.mk - generated from ansible/roles/genconfig/templates/config.mk.j2
# ** DO NOT EDIT THIS FILE MANUALLY! **
# Edit the Pod Config (or Scenario) and rerun `make config` to regenerate it

# Scenario specific config
VAGRANT_VMS             = corddev head1
HEADNODE                = head1
BUILDNODE               = corddev
DEPLOY_DOCKER_REGISTRY  = docker-registry:5000
# For MAAS
DOCKER_REGISTRY         = docker-registry:5000
DEPLOY_DOCKER_TAG       = candidate
CONFIG_CORD_PROFILE_DIR = /home/cord/cord_profile
BUILD_CORD_DIR = /opt/cord
ANSIBLE_ARGS += --skip-tags "set_compute_node_password,switch_support,reboot,interface_config"

# Targets and prerequisties
BUILD_TARGETS           = $(M)/compute1-up
VAGRANT_UP_PREREQS      = $(M)/prereqs-check $(M)/ciab-ovs
CONFIG_SSH_KEY_PREREQS      = $(M)/vagrant-ssh-install
COPY_CORD_PREREQS       = $(M)/vagrant-ssh-install
CORD_CONFIG_PREREQS     = $(M)/vagrant-ssh-install $(M)/copy-cord
PREP_HEADNODE_PREREQS   = $(M)/copy-cord $(M)/copy-config
START_XOS_PREREQS       = $(M)/deploy-maas $(M)/publish-docker-images
DEPLOY_MAVENREPO_PREREQS     = $(M)/publish-docker-images
DEPLOY_OPENSTACK_PREREQS = $(M)/deploy-maas
SETUP_AUTOMATION_PREREQS = $(M)/deploy-openstack
TESTING_PREREQS = $(M)/collect-diag-maas $(M)/setup-automation

