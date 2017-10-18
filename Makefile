all:	
	vivado -mode batch -source src/build.tcl
	ln -s ${PWD}/src/sdk/ montgomery_sw_project/montgomery_sw_project.sdk

open:
	vivado montgomery_sw_project/montgomery_sw_project.xpr -tempDir /tmp &

clean:
	rm vivado.* vivado_* .Xil/ -rf webtalk* -f
