##Docker Image should only have _ ( underscore / low dash) no slash as well .. 
##gCloud Cluster name should only have - ( hyphen / dash ) 

   function rmimage {
      # Removing the Image .. So, need to be careful !!.
      docker rmi gradle_android_apk_build
   } 

   function stop {
   		docker stop gc_gradle_android_apk_build
   		docker rm gc_gradle_android_apk_build
   }   

   function build {
      docker build -f=../image/Dockerfile -t=gradle_android_apk_build ../image       
   }    

   function run {
   		docker run -d -P  -w /home/app -v /your-android-with-gradle:/home/app --name gc_gradle_android_apk_build  gradle_android_apk_build
   		docker logs gc_gradle_android_apk_build
   } 
   

   function tag {
		docker tag gradle_android_apk_build gradle_android_apk_build
   } 

   function push {
    echo "push"
   }    

if [ "$#" -lt 1 ]; then
  echo "Usage: stop-build-run-tag-push / stop-build-run-tag / stop-build-run * /  stop / tag / run / push / rmimage combination is acceptable." >&2
  exit 1
fi

# idiomatic parameter and option handling in sh
while test $# -gt 0
do
    case "$1" in
        stop-build-run-tag-push) echo "Option stop-build-run-push is executing!! ";
   				stop "$*";
   				build "$*";  				
   				run "$*";
   				tag "$*";    				
   				push "$*";
            ;;
        stop-build-run-tag) echo "Option stop-build-run is executing!! ";
   				stop "$*";
   				build "$*";
   				run "$*";
   				tag "$*";    				
            ;;
        stop-build-run) echo "Option stop-build-run is executing!! ";
   				stop "$*";
   				build "$*";
   				run "$*";   				
            ;;                
        stop) echo "Option stop is executing!! ";
          stop "$*";
            ;;                   
        tag) echo "Option tag is executing!! ";
   				tag "$*";
            ;;
        run) echo "Option run is executing!! ";
   				run "$*";
            ;;
        push) echo "Option push is executing!! ";
   				push "$*";
            ;;   
        rmimage) echo "Option rmimage is executing!! ";
          rmimage "$*";
            ;;                      
        *) echo "Usage: stop-build-run-tag-push / stop-build-run-tag / copy * / stop-build-run * /  stop / tag / run / push / rmimage combination is acceptable. Not $1"
            ;;
    esac
    shift
    break 1
done
