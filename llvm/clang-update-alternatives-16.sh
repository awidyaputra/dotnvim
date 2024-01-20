#!/usr/bin/env sh

# Remove all existing alternatives
sudo update-alternatives --remove-all llvm
sudo update-alternatives --remove-all clang

# exit on first error
set -e

# llvm
sudo update-alternatives \
--install /usr/lib/llvm              		llvm             		    /usr/lib/llvm-16 20 \
--slave   /usr/bin/llvm-ar           		llvm-ar          		    /usr/bin/llvm-ar-16 \
--slave   /usr/bin/llvm-as           		llvm-as          		    /usr/bin/llvm-as-16 \
--slave   /usr/bin/llvm-bcanalyzer   		llvm-bcanalyzer  		    /usr/bin/llvm-bcanalyzer-16 \
--slave   /usr/bin/llvm-cat       		    llvm-cat      			    /usr/bin/llvm-cat-16  \
--slave   /usr/bin/llvm-cfi-verify      	llvm-cfi-verify      	    /usr/bin/llvm-cfi-verify-16  \
--slave   /usr/bin/llvm-config       		llvm-config      		    /usr/bin/llvm-config-16  \
--slave   /usr/bin/llvm-cov          		llvm-cov         		    /usr/bin/llvm-cov-16 \
--slave   /usr/bin/llvm-c-test          	llvm-c-test         	    /usr/bin/llvm-c-test-16 \
--slave   /usr/bin/llvm-cvtres          	llvm-cvtres         	    /usr/bin/llvm-cvtres-16 \
--slave   /usr/bin/llvm-cxxdump          	llvm-cxxdump         	    /usr/bin/llvm-cxxdump-16 \
--slave   /usr/bin/llvm-cxxfilt         	llvm-cxxfilt         	    /usr/bin/llvm-cxxfilt-16 \
--slave   /usr/bin/llvm-cxxmap          	llvm-cxxmap        		    /usr/bin/llvm-cxxmap-16 \
--slave   /usr/bin/llvm-diff         		llvm-diff       		    /usr/bin/llvm-diff-16 \
--slave   /usr/bin/llvm-dis          		llvm-dis         		    /usr/bin/llvm-dis-16 \
--slave   /usr/bin/llvm-dlltool         	llvm-dlltool         	    /usr/bin/llvm-dlltool-16 \
--slave   /usr/bin/llvm-dwarfdump    		llvm-dwarfdump   		    /usr/bin/llvm-dwarfdump-16 \
--slave   /usr/bin/llvm-dwp          		llvm-dwp         		    /usr/bin/llvm-dwp-16 \
--slave   /usr/bin/llvm-elfabi          	llvm-elfabi         	    /usr/bin/llvm-elfabi-16 \
--slave   /usr/bin/llvm-exegesis          	llvm-exegesis         	    /usr/bin/llvm-exegesis-16 \
--slave   /usr/bin/llvm-extract          	llvm-extract         	    /usr/bin/llvm-extract-16 \
--slave   /usr/bin/llvm-lib          		llvm-lib         		    /usr/bin/llvm-lib-16 \
--slave   /usr/bin/llvm-link         		llvm-link        		    /usr/bin/llvm-link-16 \
--slave   /usr/bin/llvm-lto2           		llvm-lto2          		    /usr/bin/llvm-lto2-16  \
--slave   /usr/bin/llvm-lto           		llvm-lto          		    /usr/bin/llvm-lto-16  \
--slave   /usr/bin/llvm-mc           		llvm-mc          		    /usr/bin/llvm-mc-16 \
--slave   /usr/bin/llvm-mca           		llvm-mca          		    /usr/bin/llvm-mca-16 \
--slave   /usr/bin/llvm-modextract          llvm-modextract             /usr/bin/llvm-modextract-16 \
--slave   /usr/bin/llvm-mt           		llvm-mt          		    /usr/bin/llvm-mt-16 \
--slave   /usr/bin/llvm-nm           		llvm-nm          		    /usr/bin/llvm-nm-16 \
--slave   /usr/bin/llvm-objcopy      		llvm-objcopy     		    /usr/bin/llvm-objcopy-16 \
--slave   /usr/bin/llvm-objdump      		llvm-objdump     		    /usr/bin/llvm-objdump-16 \
--slave   /usr/bin/llvm-opt-report          llvm-opt-report             /usr/bin/llvm-opt-report-16 \
--slave   /usr/bin/llvm-pdbutil          	llvm-pdbutil          	    /usr/bin/llvm-pdbutil-16  \
--slave   /usr/bin/llvm-PerfectShuffle      llvm-PerfectShuffle         /usr/bin/llvm-PerfectShuffle-16 \
--slave   /usr/bin/llvm-profdata          	llvm-profdata         	    /usr/bin/llvm-profdata-16 \
--slave   /usr/bin/llvm-ranlib      		llvm-ranlib      		    /usr/bin/llvm-ranlib-16 \
--slave   /usr/bin/llvm-rc          		llvm-rc         		    /usr/bin/llvm-rc-16 \
--slave   /usr/bin/llvm-readelf          	llvm-readelf        	    /usr/bin/llvm-readelf-16 \
--slave   /usr/bin/llvm-readobj      		llvm-readobj     		    /usr/bin/llvm-readobj-16 \
--slave   /usr/bin/llvm-rtdyld       		llvm-rtdyld      		    /usr/bin/llvm-rtdyld-16 \
--slave   /usr/bin/llvm-size         		llvm-size        		    /usr/bin/llvm-size-16 \
--slave   /usr/bin/llvm-split         		llvm-split        		    /usr/bin/llvm-split-16 \
--slave   /usr/bin/llvm-stress       		llvm-stress      		    /usr/bin/llvm-stress-16 \
--slave   /usr/bin/llvm-strings         	llvm-strings        	    /usr/bin/llvm-strings-16 \
--slave   /usr/bin/llvm-strip         		llvm-strip        		    /usr/bin/llvm-strip-16 \
--slave   /usr/bin/llvm-symbolizer   		llvm-symbolizer  		    /usr/bin/llvm-symbolizer-16 \
--slave   /usr/bin/llvm-tblgen       		llvm-tblgen      		    /usr/bin/llvm-tblgen-16 \
--slave   /usr/bin/llvm-undname       		llvm-undname      		    /usr/bin/llvm-undname-16 \
--slave   /usr/bin/llvm-xray       		    llvm-xray      			    /usr/bin/llvm-xray-16

# clang
sudo update-alternatives \
--install /usr/bin/clang                	clang        			    /usr/bin/clang-16 10 \
--slave   /usr/bin/clang++              	clang++      			    /usr/bin/clang++-16 \
--slave   /usr/bin/clang-apply-replacements	clang-apply-replacements	/usr/bin/clang-apply-replacements-16 \
--slave   /usr/bin/clang-change-namespace	clang-change-namespace		/usr/bin/clang-change-namespace-16 \
--slave   /usr/bin/clang-check			    clang-check			        /usr/bin/clang-check-16 \
--slave   /usr/bin/clang-cl			        clang-cl			        /usr/bin/clang-cl-16 \
--slave   /usr/bin/clang-cpp			    clang-cpp			        /usr/bin/clang-cpp-16 \
--slave   /usr/bin/clangd			        clangd				        /usr/bin/clangd-16 \
--slave   /usr/bin/clang-extdef-mapping		clang-extdef-mapping		/usr/bin/clang-extdef-mapping-16 \
--slave   /usr/bin/clang-tidy			    clang-tidy			    /usr/bin/clang-tidy-16 \
--slave   /usr/bin/clang-format			    clang-format			    /usr/bin/clang-format-16 \
--slave   /usr/bin/clang-format-diff		clang-format-diff		    /usr/bin/clang-format-diff-16 \
--slave   /usr/bin/clang-import-test		clang-import-test		    /usr/bin/clang-import-test-16 \
--slave   /usr/bin/clang-include-fixer		clang-include-fixer		    /usr/bin/clang-include-fixer-16 \
--slave   /usr/bin/clang-offload-bundler	clang-offload-bundler		/usr/bin/clang-offload-bundler-16 \
--slave   /usr/bin/clang-query			    clang-query			        /usr/bin/clang-query-16 \
--slave   /usr/bin/clang-refactor		    clang-refactor			    /usr/bin/clang-refactor-16 \
--slave   /usr/bin/clang-rename			    clang-rename			    /usr/bin/clang-rename-16 \
--slave   /usr/bin/clang-reorder-fields		clang-reorder-fields		/usr/bin/clang-reorder-fields-16 \
--slave   /usr/bin/scan-view             	scan-view              		/usr/bin/scan-view-16 \
--slave   /usr/bin/scan-build            	scan-build             		/usr/bin/scan-build-16 \
--slave   /usr/bin/scan-build-py         	scan-build-py          		/usr/bin/scan-build-py-16 \
--slave   /usr/bin/bugpoint            		bugpoint             		/usr/bin/bugpoint-16 \
--slave   /usr/bin/c-index-test          	c-index-test           		/usr/bin/c-index-test-16 \
--slave   /usr/bin/diagtool            		diagtool             		/usr/bin/diagtool-16 \
--slave   /usr/bin/find-all-symbols      	find-all-symbols       		/usr/bin/find-all-symbols-16 \
--slave   /usr/bin/git-clang-format		    git-clang-format		    /usr/bin/git-clang-format-16 \
--slave   /usr/bin/hmaptool            		hmaptool             		/usr/bin/hmaptool-16 \
--slave   /usr/bin/modularize            	modularize             		/usr/bin/modularize-16 \
--slave   /usr/bin/obj2yaml            		obj2yaml             		/usr/bin/obj2yaml-16 \
--slave   /usr/bin/opt                  	opt                   		/usr/bin/opt-16 \
--slave   /usr/bin/sancov                	sancov                 		/usr/bin/sancov-16 \
--slave   /usr/bin/sanstats            		sanstats             		/usr/bin/sanstats-16 \
--slave   /usr/bin/verify-uselistorder      verify-uselistorder         /usr/bin/verify-uselistorder-16 \
--slave   /usr/bin/wasm-ld            		wasm-ld             		/usr/bin/wasm-ld-16 \
--slave   /usr/bin/yaml2obj            		yaml2obj             		/usr/bin/yaml2obj-16 \
--slave   /usr/bin/yaml-bench            	yaml-bench             		/usr/bin/yaml-bench-16 \
--slave   /usr/bin/lld                  	lld          			    /usr/bin/lld-16 \
--slave   /usr/bin/lld-link           		lld-link              		/usr/bin/lld-link-16 \
--slave   /usr/bin/lli-child-target         lli-child-target          	/usr/bin/lli-child-target-16 \
--slave   /usr/bin/lli                  	lli          			    /usr/bin/lli-16 \
--slave   /usr/bin/lldb                  	lldb                   		/usr/bin/lldb-16 \
--slave   /usr/bin/lldb-argdumper           lldb-argdumper              /usr/bin/lldb-argdumper-16 \
--slave   /usr/bin/lldb-mi               	lldb-mi                  	/usr/bin/lldb-mi-16 \
--slave   /usr/bin/lldb-server           	lldb-server            		/usr/bin/lldb-server-16 \
--slave   /usr/bin/lldb-test           		lldb-test            		/usr/bin/lldb-test-16 \
--slave   /usr/bin/lldb-vscode           	lldb-vscode            		/usr/bin/lldb-vscode-16 \

# make system default
#sudo update-alternatives --install /usr/bin/cc  cc  /usr/bin/clang      10
#sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++    10
