bin_SCRIPTS = power_controls
dist_noinst_SCRIPTS = script.bash
CLEANFILES = $(bin_SCRIPTS)
$(bin_SCRIPTS): $(dist_noinst_SCRIPTS)
	cp $< $@
	chmod 775 $@
