# #!/bin/bash
# # set_course_perms.sh
# # Script to update permissions for course folders inside a list of user home directories

# # Exit on error
# set -e

# # Base directory 
# BASE_DIR="/home"
 
# # List of users (edit this list as needed)
# # USER_LIST=("24bd1a6661")
# # USER_LIST=("24bd1a6661" "24bd1a6662" "24bd1a6663" "24bd1a6664" "24bd1a6665" "24bd1a6666" "24bd1a6667" "24bd1a6668" "24bd1a6669" "24bd1a666a" "24bd1a666b" "24bd1a666c" "24bd1a666d" "24bd1a666e" "24bd1a666f" "24bd1a666g" "24bd1a666h" "24bd1a666j" "24bd1a666k" "24bd1a666l" "24bd1a666m" "24bd1a666n" "24bd1a666p" "24bd1a666q" "24bd1a666r" "24bd1a666t" "24bd1a666u" "24bd1a666v" "24bd1a666w" "24bd1a666x" "24bd1a666y" "24bd1a666z" "24bd1a6671" "24bd1a6672" "24bd1a6673" "24bd1a6674" "24bd1a6675" "24bd1a6676" "24bd1a6677" "24bd1a6678" "24bd1a6679" "24bd1a667a" "24bd1a667b" "24bd1a667c" "24bd1a667d" "24bd1a667e" "24bd1a667f" "24bd1a667g" "24bd1a667h" "24bd1a667j" "24bd1a667k" "24bd1a667l" "24bd1a667m" "24bd1a667n" "24bd1a667p" "24bd1a667q" "24bd1a667r" "24bd1a667t" "24bd1a667u" "24bd1a667v" "24bd1a667w" "24bd1a667x" "24bd1a667y" "24bd1a667z" "25bd5a6622" "25bd5a6623" "25bd5a6624" "25bd5a6625" "25bd5a6626" "25bd5a6627")
# # USER_LIST=("24bd1a6641" "24bd1a6642" "24bd1a6643" "24bd1a6644" "24bd1a6645" "24bd1a6646" "24bd1a6647" "24bd1a6648" "24bd1a6649" "24bd1a664a" "24bd1a664b" "24bd1a664c" "24bd1a664d" "24bd1a664e" "24bd1a664f" "24bd1a664g" "24bd1a664h" "24bd1a664j" "24bd1a664k" "24bd1a664l" "24bd1a664m" "24bd1a664n" "24bd1a664p" "24bd1a664q" "24bd1a664r" "24bd1a664t" "24bd1a664u" "24bd1a664v" "24bd1a664w" "24bd1a664x" "24bd1a664y" "24bd1a664z" "24bd1a6651" "24bd1a6652" "24bd1a6653" "24bd1a6654" "24bd1a6655" "24bd1a6656" "24bd1a6657" "24bd1a6658" "24bd1a6659" "24bd1a665a" "24bd1a665b" "24bd1a665c" "24bd1a665d" "24bd1a665e" "24bd1a665f" "24bd1a665g" "24bd1a665h" "24bd1a665j" "24bd1a665k" "24bd1a665l" "24bd1a665m" "24bd1a665n" "24bd1a665p" "24bd1a665q" "24bd1a665r" "24bd1a665t" "24bd1a665u" "24bd1a665v" "24bd1a665w" "24bd1a665x" "24bd1a665y" "24bd1a665z" "24bd1a66k3" "25bd5a6615" "25bd5a6616" "25bd5a6617" "25bd5a6618" "25bd5a6619" "25bd5a6620" "25bd5a6621")
# USER_LIST=("tpjay1")

# # 2csm-a
# # USER_LIST=("24bd1a6601" "24bd1a6602" "24bd1a6603" "24bd1a6604" "24bd1a6605" "24bd1a6606" "24bd1a6607" "24bd1a6608" "24bd1a6609" "24bd1a660a" "24bd1a660b" "24bd1a660c" "24bd1a660d" "24bd1a660e" "24bd1a660f" "24bd1a660g" "24bd1a660h" "24bd1a660j" "24bd1a660k" "24bd1a660l" "24bd1a660m" "24bd1a660n" "24bd1a660p" "24bd1a660q" "24bd1a660r" "24bd1a660t" "24bd1a660u" "24bd1a660v" "24bd1a660w" "24bd1a660x" "24bd1a660y" "24bd1a660z" "24bd1a6611" "24bd1a6612" "24bd1a6613" "24bd1a6614" "24bd1a6615" "24bd1a6616" "24bd1a6617" "24bd1a6618" "24bd1a6619" "24bd1a661a" "24bd1a661b" "24bd1a661c" "24bd1a661d" "24bd1a661e" "24bd1a661f" "24bd1a661g" "24bd1a661h" "24bd1a661j" "24bd1a661k" "24bd1a661l" "24bd1a661m" "24bd1a661n" "24bd1a661p" "24bd1a661q" "24bd1a661r" "24bd1a661t" "24bd1a661u" "24bd1a661v" "24bd1a661w" "24bd1a661x" "24bd1a661y" "24bd1a661z" "24bd1a66k1" "25bd5a6601" "25bd5a6602" "25bd5a6603" "25bd5a6604" "25bd5a6605" "25bd5a6606" "25bd5a6607")

# # 2csm-b
# # USER_LIST=("24bd1a6621" "24bd1a6622" "24bd1a6623" "24bd1a6624" "24bd1a6625" "24bd1a6626" "24bd1a6627" "24bd1a6628" "24bd1a6629" "24bd1a662a" "24bd1a662b" "24bd1a662c" "24bd1a662d" "24bd1a662e" "24bd1a662f" "24bd1a662g" "24bd1a662h" "24bd1a662j" "24bd1a662k" "24bd1a662l" "24bd1a662m" "24bd1a662n" "24bd1a662p" "24bd1a662q" "24bd1a662r" "24bd1a662t" "24bd1a662u" "24bd1a662v" "24bd1a662w" "24bd1a662x" "24bd1a662y" "24bd1a662z" "24bd1a6631" "24bd1a6632" "24bd1a6633" "24bd1a6634" "24bd1a6635" "24bd1a6636" "24bd1a6637" "24bd1a6638" "24bd1a6639" "24bd1a663a" "24bd1a663b" "24bd1a663c" "24bd1a663d" "24bd1a663e" "24bd1a663f" "24bd1a663g" "24bd1a663h" "24bd1a663j" "24bd1a663k" "24bd1a663l" "24bd1a663m" "24bd1a663n" "24bd1a663p" "24bd1a663q" "24bd1a663r" "24bd1a663t" "24bd1a663u" "24bd1a663v" "24bd1a663w" "24bd1a663y" "24bd1a663z" "24bd1a66k2" "25bd5a6608" "25bd5a6609" "25bd5a6610" "25bd5a6611" "25bd5a6612" "25bd5a6613" "25bd5a6614")

# # 2csm-c
# # USER_LIST=("24bd1a6641" "24bd1a6642" "24bd1a6643" "24bd1a6644" "24bd1a6645" "24bd1a6646" "24bd1a6647" "24bd1a6648" "24bd1a6649" "24bd1a664a" "24bd1a664b" "24bd1a664c" "24bd1a664d" "24bd1a664e" "24bd1a664f" "24bd1a664g" "24bd1a664h" "24bd1a664j" "24bd1a664k" "24bd1a664l" "24bd1a664m" "24bd1a664n" "24bd1a664p" "24bd1a664q" "24bd1a664r" "24bd1a664t" "24bd1a664u" "24bd1a664v" "24bd1a664w" "24bd1a664x" "24bd1a664y" "24bd1a664z" "24bd1a6651" "24bd1a6652" "24bd1a6653" "24bd1a6654" "24bd1a6655" "24bd1a6656" "24bd1a6657" "24bd1a6658" "24bd1a6659" "24bd1a665a" "24bd1a665b" "24bd1a665c" "24bd1a665d" "24bd1a665e" "24bd1a665f" "24bd1a665g" "24bd1a665h" "24bd1a665j" "24bd1a665k" "24bd1a665l" "24bd1a665m" "24bd1a665n" "24bd1a665p" "24bd1a665q" "24bd1a665r" "24bd1a665t" "24bd1a665u" "24bd1a665v" "24bd1a665w" "24bd1a665x" "24bd1a665y" "24bd1a665z" "24bd1a66k3" "25bd5a6615" "25bd5a6616" "25bd5a6617" "25bd5a6618" "25bd5a6619" "25bd5a6620" "25bd5a6621")

# # 2csm-d
# # USER_LIST=("24bd1a6661" "24bd1a6662" "24bd1a6663" "24bd1a6664" "24bd1a6665" "24bd1a6666" "24bd1a6667" "24bd1a6668" "24bd1a6669" "24bd1a666a" "24bd1a666b" "24bd1a666c" "24bd1a666d" "24bd1a666e" "24bd1a666f" "24bd1a666g" "24bd1a666h" "24bd1a666j" "24bd1a666k" "24bd1a666l" "24bd1a666m" "24bd1a666n" "24bd1a666p" "24bd1a666q" "24bd1a666r" "24bd1a666t" "24bd1a666u" "24bd1a666v" "24bd1a666w" "24bd1a666x" "24bd1a666y" "24bd1a666z" "24bd1a6671" "24bd1a6672" "24bd1a6673" "24bd1a6674" "24bd1a6675" "24bd1a6676" "24bd1a6677" "24bd1a6678" "24bd1a6679" "24bd1a667a" "24bd1a667b" "24bd1a667c" "24bd1a667d" "24bd1a667e" "24bd1a667f" "24bd1a667g" "24bd1a667h" "24bd1a667j" "24bd1a667k" "24bd1a667l" "24bd1a667m" "24bd1a667n" "24bd1a667p" "24bd1a667q" "24bd1a667r" "24bd1a667t" "24bd1a667u" "24bd1a667v" "24bd1a667w" "24bd1a667x" "24bd1a667y" "24bd1a667z" "25bd5a6622" "25bd5a6623" "25bd5a6624" "25bd5a6625" "25bd5a6626" "25bd5a6627")

# # 2csm-e
# # USER_LIST=("24bd1a6681" "24bd1a6682" "24bd1a6683" "24bd1a6684" "24bd1a6685" "24bd1a6686" "24bd1a6687" "24bd1a6688" "24bd1a6689" "24bd1a668a" "24bd1a668b" "24bd1a668c" "24bd1a668d" "24bd1a668e" "24bd1a668f" "24bd1a668g" "24bd1a668h" "24bd1a668j" "24bd1a668k" "24bd1a668l" "24bd1a668m" "24bd1a668n" "24bd1a668p" "24bd1a668q" "24bd1a668r" "24bd1a668t" "24bd1a668u" "24bd1a668v" "24bd1a668w" "24bd1a668x" "24bd1a668y" "24bd1a668z" "24bd1a6691" "24bd1a6692" "24bd1a6693" "24bd1a6694" "24bd1a6695" "24bd1a6696" "24bd1a6697" "24bd1a6698" "24bd1a6699" "24bd1a669a" "24bd1a669b" "24bd1a669c" "24bd1a669d" "24bd1a669e" "24bd1a669f" "24bd1a669g" "24bd1a669h" "24bd1a669j" "24bd1a669k" "24bd1a669l" "24bd1a669m" "24bd1a669n" "24bd1a669p" "24bd1a669q" "24bd1a669r" "24bd1a669t" "24bd1a669u" "24bd1a669v" "25bd5a6628" "25bd5a6629" "25bd5a6630" "25bd5a6631" "25bd5a6632" "25bd5a6633")

# echo "🔧 Updating permissions for course folders for selected users..."

# for username in "${USER_LIST[@]}"; do
#   userdir="$BASE_DIR/$username"
#   if [ -d "$userdir" ]; then
#     for coursedir in "$userdir"/2csm-a; do
#       for assdir in "$coursedir"/*; do
#         if [ -d "$assdir" ]; then
#           echo "Setting permissions for $assdir"
#           chmod -R 000 "$assdir"
#         fi
#       done
#     done
#   else
#     echo "⚠️ Skipping $username (no directory found)"
#   fi
# done

# echo "✅ Permissions updated successfully."


#!/bin/bash
# set_course_perms.sh
# Script to update permissions for assignments per course and per student

BASE_DIR="/home"

# ===============================
# COURSE-WISE USER LISTS
# ===============================

declare -A COURSE_USERS

COURSE_USERS["2csm-a"]="24bd1a6601 24bd1a6602 24bd1a6603 24bd1a6604 24bd1a6605 24bd1a6606 24bd1a6607 24bd1a6608 24bd1a6609 24bd1a660a 24bd1a660b 24bd1a660c 24bd1a660d 24bd1a660e 24bd1a660f 24bd1a660g 24bd1a660h 24bd1a660j 24bd1a660k 24bd1a660l 24bd1a660m 24bd1a660n 24bd1a660p 24bd1a660q 24bd1a660r 24bd1a660t 24bd1a660u 24bd1a660v 24bd1a660w 24bd1a660x 24bd1a660y 24bd1a660z 24bd1a6611 24bd1a6612 24bd1a6613 24bd1a6614 24bd1a6615 24bd1a6616 24bd1a6617 24bd1a6618 24bd1a6619 24bd1a661a 24bd1a661b 24bd1a661c 24bd1a661d 24bd1a661e 24bd1a661f 24bd1a661g 24bd1a661h 24bd1a661j 24bd1a661k 24bd1a661l 24bd1a661m 24bd1a661n 24bd1a661p 24bd1a661q 24bd1a661r 24bd1a661t 24bd1a661u 24bd1a661v 24bd1a661w 24bd1a661x 24bd1a661y 24bd1a661z 24bd1a66k1 25bd5a6601 25bd5a6602 25bd5a6603 25bd5a6604 25bd5a6605 25bd5a6606 25bd5a6607"

COURSE_USERS["2csm-b"]="24bd1a6621 24bd1a6622 24bd1a6623 24bd1a6624 24bd1a6625 24bd1a6626 24bd1a6627 24bd1a6628 24bd1a6629 24bd1a662a 24bd1a662b 24bd1a662c 24bd1a662d 24bd1a662e 24bd1a662f 24bd1a662g 24bd1a662h 24bd1a662j 24bd1a662k 24bd1a662l 24bd1a662m 24bd1a662n 24bd1a662p 24bd1a662q 24bd1a662r 24bd1a662t 24bd1a662u 24bd1a662v 24bd1a662w 24bd1a662x 24bd1a662y 24bd1a662z 24bd1a6631 24bd1a6632 24bd1a6633 24bd1a6634 24bd1a6635 24bd1a6636 24bd1a6637 24bd1a6638 24bd1a6639 24bd1a663a 24bd1a663b 24bd1a663c 24bd1a663d 24bd1a663e 24bd1a663f 24bd1a663g 24bd1a663h 24bd1a663j 24bd1a663k 24bd1a663l 24bd1a663m 24bd1a663n 24bd1a663p 24bd1a663q 24bd1a663r 24bd1a663t 24bd1a663u 24bd1a663v 24bd1a663w 24bd1a663y 24bd1a663z 24bd1a66k2 25bd5a6608 25bd5a6609 25bd5a6610 25bd5a6611 25bd5a6612 25bd5a6613 25bd5a6614"

COURSE_USERS["2csm-c"]="24bd1a6641 24bd1a6642 24bd1a6643 24bd1a6644 24bd1a6645 24bd1a6646 24bd1a6647 24bd1a6648 24bd1a6649 24bd1a664a 24bd1a664b 24bd1a664c 24bd1a664d 24bd1a664e 24bd1a664f 24bd1a664g 24bd1a664h 24bd1a664j 24bd1a664k 24bd1a664l 24bd1a664m 24bd1a664n 24bd1a664p 24bd1a664q 24bd1a664r 24bd1a664t 24bd1a664u 24bd1a664v 24bd1a664w 24bd1a664x 24bd1a664y 24bd1a664z 24bd1a6651 24bd1a6652 24bd1a6653 24bd1a6654 24bd1a6655 24bd1a6656 24bd1a6657 24bd1a6658 24bd1a6659 24bd1a665a 24bd1a665b 24bd1a665c 24bd1a665d 24bd1a665e 24bd1a665f 24bd1a665g 24bd1a665h 24bd1a665j 24bd1a665k 24bd1a665l 24bd1a665m 24bd1a665n 24bd1a665p 24bd1a665q 24bd1a665r 24bd1a665t 24bd1a665u 24bd1a665v 24bd1a665w 24bd1a665x 24bd1a665y 24bd1a665z 24bd1a66k3 25bd5a6615 25bd5a6616 25bd5a6617 25bd5a6618 25bd5a6619 25bd5a6620 25bd5a6621"

COURSE_USERS["2csm-d"]="24bd1a6661 24bd1a6662 24bd1a6663 24bd1a6664 24bd1a6665 24bd1a6666 24bd1a6667 24bd1a6668 24bd1a6669 24bd1a666a 24bd1a666b 24bd1a666c 24bd1a666d 24bd1a666e 24bd1a666f 24bd1a666g 24bd1a666h 24bd1a666j 24bd1a666k 24bd1a666l 24bd1a666m 24bd1a666n 24bd1a666p 24bd1a666q 24bd1a666r 24bd1a666t 24bd1a666u 24bd1a666v 24bd1a666w 24bd1a666x 24bd1a666y 24bd1a666z 24bd1a6671 24bd1a6672 24bd1a6673 24bd1a6674 24bd1a6675 24bd1a6676 24bd1a6677 24bd1a6678 24bd1a6679 24bd1a667a 24bd1a667b 24bd1a667c 24bd1a667d 24bd1a667e 24bd1a667f 24bd1a667g 24bd1a667h 24bd1a667j 24bd1a667k 24bd1a667l 24bd1a667m 24bd1a667n 24bd1a667p 24bd1a667q 24bd1a667r 24bd1a667t 24bd1a667u 24bd1a667v 24bd1a667w 24bd1a667x 24bd1a667y 24bd1a667z 25bd5a6622 25bd5a6623 25bd5a6624 25bd5a6625 25bd5a6626 25bd5a6627"

COURSE_USERS["2csm-e"]="24bd1a6681 24bd1a6682 24bd1a6683 24bd1a6684 24bd1a6685 24bd1a6686 24bd1a6687 24bd1a6688 24bd1a6689 24bd1a668a 24bd1a668b 24bd1a668c 24bd1a668d 24bd1a668e 24bd1a668f 24bd1a668g 24bd1a668h 24bd1a668j 24bd1a668k 24bd1a668l 24bd1a668m 24bd1a668n 24bd1a668p 24bd1a668q 24bd1a668r 24bd1a668t 24bd1a668u 24bd1a668v 24bd1a668w 24bd1a668x 24bd1a668y 24bd1a668z 24bd1a6691 24bd1a6692 24bd1a6693 24bd1a6694 24bd1a6695 24bd1a6696 24bd1a6697 24bd1a6698 24bd1a6699 24bd1a669a 24bd1a669b 24bd1a669c 24bd1a669d 24bd1a669e 24bd1a669f 24bd1a669g 24bd1a669h 24bd1a669j 24bd1a669k 24bd1a669l 24bd1a669m 24bd1a669n 24bd1a669p 24bd1a669q 24bd1a669r 24bd1a669t 24bd1a669u 24bd1a669v 25bd5a6628 25bd5a6629 25bd5a6630 25bd5a6631 25bd5a6632 25bd5a6633"

# ===============================
# APPLY PERMISSIONS
# ===============================

for course in "${!COURSE_USERS[@]}"; do
  echo "📚 Processing course: $course"
  for user in ${COURSE_USERS[$course]}; do
    userdir="$BASE_DIR/$user/$course"
    if [ -d "$userdir" ]; then
      for assdir in "$userdir"/*; do
        if [ -d "$assdir" ]; then
          echo "  🔧 Setting permissions for $assdir"
          chmod -R 000 "$assdir"
        fi
      done
    else
      echo "  ⚠️ Skipping $user (no directory $userdir)"
    fi
  done
done

echo "✅ All permissions updated."
