# Flight branding
yum install alces-flight-landing-page-branding

mv /opt/flight/etc/flight-starter.rc /opt/flight/etc/flight-starter.rc.openflight
mv /opt/flight/etc/flight-starter.cshrc /opt/flight/etc/flight-starter.cshrc.openflight
yum swap -y flight-starter-banner flight-direct-flight-starter-banner

echo "bg_image: /opt/flight/etc/assets/backgrounds/alces-flight.jpg" >> /opt/flight/opt/desktop/etc/config.yml

# Flight Systemd Integration
yum install flight-plugin-system-systemd-service
systemctl enable flight-service
systemctl start flight-service

# SLURM & Munge Packages
yum install munge munge-libs perl-Switch numactl flight-slurm flight-slurm-devel flight-slurm-perlapi flight-slurm-torque flight-slurm-slurmd flight-slurm-example-configs flight-slurm-libpmi flight-slurm-slurmctld


