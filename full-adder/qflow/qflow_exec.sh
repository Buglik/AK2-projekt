#!/usr/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project /home/kuba/Desktop/ak_2_Projekt/full-adder/qflow
#-------------------------------------------

# /usr/lib/qflow/scripts/synthesize.sh /home/kuba/Desktop/ak_2_Projekt/full-adder/qflow full_adder /home/kuba/Desktop/ak_2_Projekt/full-adder/qflow/source/full_adder.v || exit 1
# /usr/lib/qflow/scripts/placement.sh -d /home/kuba/Desktop/ak_2_Projekt/full-adder/qflow full_adder || exit 1
# /usr/lib/qflow/scripts/opensta.sh  /home/kuba/Desktop/ak_2_Projekt/full-adder/qflow full_adder || exit 1
# /usr/lib/qflow/scripts/vesta.sh -a /home/kuba/Desktop/ak_2_Projekt/full-adder/qflow full_adder || exit 1
# /usr/lib/qflow/scripts/router.sh /home/kuba/Desktop/ak_2_Projekt/full-adder/qflow full_adder || exit 1
# /usr/lib/qflow/scripts/opensta.sh  -d /home/kuba/Desktop/ak_2_Projekt/full-adder/qflow full_adder || exit 1
# /usr/lib/qflow/scripts/vesta.sh -a -d /home/kuba/Desktop/ak_2_Projekt/full-adder/qflow full_adder || exit 1
# /usr/lib/qflow/scripts/migrate.sh /home/kuba/Desktop/ak_2_Projekt/full-adder/qflow full_adder || exit 1
# /usr/lib/qflow/scripts/drc.sh /home/kuba/Desktop/ak_2_Projekt/full-adder/qflow full_adder || exit 1
# /usr/lib/qflow/scripts/lvs.sh /home/kuba/Desktop/ak_2_Projekt/full-adder/qflow full_adder || exit 1
/usr/lib/qflow/scripts/gdsii.sh /home/kuba/Desktop/ak_2_Projekt/full-adder/qflow full_adder || exit 1
# /usr/lib/qflow/scripts/cleanup.sh /home/kuba/Desktop/ak_2_Projekt/full-adder/qflow full_adder || exit 1
# /usr/lib/qflow/scripts/display.sh /home/kuba/Desktop/ak_2_Projekt/full-adder/qflow full_adder || exit 1
