latest_download = Dir.glob("/Users/daviddouglas/Downloads/Export*.csv").max do |a,b| 
  File.ctime(a) <=> File.ctime(b)
end
puts "latest download is #{latest_download}"
`cp #{latest_download} /Users/daviddouglas/sikuli_scripts`
basename = File.basename(latest_download)
`mv /Users/daviddouglas/sikuli_scripts/#{basename} /Users/daviddouglas/sikuli_scripts/costar_data.csv`
`ogr2ogr -f KML /Users/daviddouglas/sikuli_scripts/costar_data.kml /Users/daviddouglas/sikuli_scripts/costar_vrt.vrt`
`open /Users/daviddouglas/sikuli_scripts/costar_data.kml`
`say "save the KML somewhere else to prevent from being overwritten"`

