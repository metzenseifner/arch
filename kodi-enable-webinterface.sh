cat <<EOF >> /home/kodi/.kodi/userdata/advancedsettings.xml
<?xml version='1.0' encoding='UTF-8'?>
<advancedsettings>
  <services>
    <esallinterfaces>true</esallinterfaces>
    <webserver>true</webserver>
    <zeroconf>true</zeroconf>
  </services>
  <musiclibrary>
    <backgroundupdate>true</backgroundupdate>
  </musiclibrary>
  <videolibrary>
    <cleanonupdate>false</cleanonupdate>
  </videolibrary>
  <video>
    <ignorepercentatend>10</ignorepercentatend>
    <playcountminimumpercent>90</playcountminimumpercent>
    <ignoresecondsatstart>60</ignoresecondsatstart>
  </video>
</advancedsettings>
EOF
