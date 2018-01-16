{ config, pkgs, ... }:
{

  # Most common timezone
  time.timeZone = "America/Los_Angeles";

  # Use NTP
  services.ntp.enable = true;

}
