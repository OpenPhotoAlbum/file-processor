#!/bin/bash
# Add geolocation data to videos based on city/state

# Common New England locations with GPS coordinates
declare -A LOCATIONS=(
    ["Haverhill,MA"]="42.7762,-71.0773"
    ["Boston,MA"]="42.3601,-71.0589"
    ["Portland,ME"]="43.6591,-70.2568"
    ["York,ME"]="43.1509,-70.6261"
    ["Dover,NH"]="43.1979,-70.8767"
    ["Manchester,NH"]="42.9956,-71.4548"
    ["Providence,RI"]="41.8240,-71.4128"
    ["Burlington,VT"]="44.4759,-73.2121"
    ["Hartford,CT"]="41.7658,-72.6734"
    ["Worcester,MA"]="42.2626,-71.8023"
    ["Springfield,MA"]="42.1015,-72.5898"
    ["Cambridge,MA"]="42.3736,-71.1097"
    ["Lowell,MA"]="42.6334,-71.3162"
    ["Lawrence,MA"]="42.7070,-71.1631"
    ["Lynn,MA"]="42.4668,-70.9495"
    ["Quincy,MA"]="42.2529,-71.0023"
    ["Newton,MA"]="42.3370,-71.2092"
    ["Somerville,MA"]="42.3876,-71.0995"
    ["Framingham,MA"]="42.2793,-71.4162"
    ["Waltham,MA"]="42.3765,-71.2356"
    ["Malden,MA"]="42.4251,-71.0662"
    ["Medford,MA"]="42.4184,-71.1062"
    ["Peabody,MA"]="42.5278,-70.9286"
    ["Methuen,MA"]="42.7262,-71.1909"
    ["Everett,MA"]="42.4084,-71.0537"
    ["Salem,MA"]="42.5195,-70.8967"
    ["Beverly,MA"]="42.5584,-70.8800"
    ["Gloucester,MA"]="42.6159,-70.6626"
    ["Woburn,MA"]="42.4793,-71.1523"
    ["Andover,MA"]="42.6583,-71.1369"
    ["Natick,MA"]="42.2835,-71.3495"
    ["Lexington,MA"]="42.4430,-71.2290"
    ["Needham,MA"]="42.2835,-71.2328"
    ["Arlington,MA"]="42.4154,-71.1565"
    ["Belmont,MA"]="42.3959,-71.1787"
    ["Watertown,MA"]="42.3709,-71.1828"
    ["Dedham,MA"]="42.2418,-71.1662"
    ["Weymouth,MA"]="42.2181,-70.9410"
    ["Brookline,MA"]="42.3318,-71.1212"
    ["Plymouth,MA"]="41.9584,-70.6673"
    ["Brockton,MA"]="42.0834,-71.0184"
    ["New Bedford,MA"]="41.6362,-70.9273"
    ["Fall River,MA"]="41.7015,-71.1550"
    ["Taunton,MA"]="41.9001,-71.0897"
    ["Fitchburg,MA"]="42.5834,-71.8023"
    ["Holyoke,MA"]="42.2043,-72.6162"
    ["Northampton,MA"]="42.3251,-72.6412"
    ["Concord,NH"]="43.2081,-71.5376"
    ["Nashua,NH"]="42.7654,-71.4676"
    ["Portsmouth,NH"]="43.0718,-70.7626"
    ["Rochester,NH"]="43.3045,-70.9759"
    ["Salem,NH"]="42.7884,-71.2009"
    ["Keene,NH"]="42.9336,-72.2781"
    ["Laconia,NH"]="43.5279,-71.4704"
    ["Claremont,NH"]="43.3767,-72.3468"
    ["Lebanon,NH"]="43.6423,-72.2518"
    ["Durham,NH"]="43.1340,-70.9265"
    ["Hampton,NH"]="42.9376,-70.8389"
    ["North Conway,NH"]="44.0537,-71.1285"
    ["Rollinsford,NH"]="43.2362,-70.8203"
    ["South Berwick,ME"]="43.2348,-70.8095"
    ["Kittery,ME"]="43.0884,-70.7364"
    ["Wells,ME"]="43.3223,-70.5806"
    ["Sanford,ME"]="43.4393,-70.7742"
    ["Biddeford,ME"]="43.4926,-70.4534"
    ["Saco,ME"]="43.5009,-70.4428"
    ["Westbrook,ME"]="43.6770,-70.3712"
    ["South Portland,ME"]="43.6415,-70.2409"
    ["Augusta,ME"]="44.3106,-69.7795"
    ["Bangor,ME"]="44.8012,-68.7778"
    ["Auburn,ME"]="44.0979,-70.2312"
    ["Aruba,Aruba"]="12.5211,-69.9683"
    ["Austin,TX"]="30.2672,-97.7431"
)

# Function to add GPS coordinates to a video file
add_gps_to_video() {
    local video_file="$1"
    local location="$2"
    
    if [[ -z "${LOCATIONS[$location]}" ]]; then
        echo "Unknown location: $location"
        echo "Please provide coordinates in format: LAT,LON"
        return 1
    fi
    
    local coords="${LOCATIONS[$location]}"
    local lat=$(echo "$coords" | cut -d',' -f1)
    local lon=$(echo "$coords" | cut -d',' -f2)
    
    echo "Adding GPS coordinates to: $video_file"
    echo "Location: $location → GPS: $lat, $lon"
    
    # Add GPS metadata using exiftool
    exiftool -overwrite_original \
        -GPSLatitude="$lat" \
        -GPSLongitude="$lon" \
        -GPSLatitudeRef=$(echo "$lat" | awk '{if ($1 >= 0) print "N"; else print "S"}') \
        -GPSLongitudeRef=$(echo "$lon" | awk '{if ($1 >= 0) print "E"; else print "W"}') \
        "$video_file"
    
    return $?
}

# Function to add a custom date to a video
add_date_to_video() {
    local video_file="$1"
    local date_string="$2"
    
    echo "Adding date to: $video_file"
    echo "Date: $date_string"
    
    # Add DateTimeOriginal using exiftool
    exiftool -overwrite_original \
        -DateTimeOriginal="$date_string" \
        -CreateDate="$date_string" \
        "$video_file"
    
    return $?
}

# Function to process a batch file
process_batch_file() {
    local batch_file="$1"
    
    while IFS='|' read -r video_file date_string location; do
        # Skip header lines and empty lines
        [[ "$video_file" =~ ^#.*$ ]] && continue
        [[ -z "$video_file" ]] && continue
        
        # Trim whitespace
        video_file=$(echo "$video_file" | xargs)
        date_string=$(echo "$date_string" | xargs)
        location=$(echo "$location" | xargs)
        
        echo "Processing: $video_file"
        
        # Add date if provided
        if [[ -n "$date_string" && "$date_string" != "[MISSING]" ]]; then
            add_date_to_video "$video_file" "$date_string"
        fi
        
        # Add GPS if location provided
        if [[ -n "$location" && "$location" != "[MISSING]" ]]; then
            add_gps_to_video "$video_file" "$location"
        fi
        
        echo "---"
    done < "$batch_file"
}

# Main script logic
case "$1" in
    "batch")
        if [[ -z "$2" ]]; then
            echo "Usage: $0 batch <batch_file>"
            echo "Batch file format: video_file|date_string|location"
            echo "Example: christmas_1993.mp4|1993:12:25 18:00:00|Haverhill,MA"
            exit 1
        fi
        process_batch_file "$2"
        ;;
    "single")
        if [[ -z "$2" || -z "$3" ]]; then
            echo "Usage: $0 single <video_file> <location> [date]"
            echo "Example: $0 single video.mp4 Haverhill,MA '1993:12:25 18:00:00'"
            exit 1
        fi
        video_file="$2"
        location="$3"
        date_string="$4"
        
        if [[ -n "$date_string" ]]; then
            add_date_to_video "$video_file" "$date_string"
        fi
        add_gps_to_video "$video_file" "$location"
        ;;
    "list-locations")
        echo "Available locations with GPS coordinates:"
        for location in "${!LOCATIONS[@]}"; do
            echo "$location → ${LOCATIONS[$location]}"
        done | sort
        ;;
    *)
        echo "Usage: $0 {batch|single|list-locations}"
        echo
        echo "Examples:"
        echo "  $0 single video.mp4 'Boston,MA' '1993:12:25 18:00:00'"
        echo "  $0 batch video_metadata_batch.txt"
        echo "  $0 list-locations"
        exit 1
        ;;
esac