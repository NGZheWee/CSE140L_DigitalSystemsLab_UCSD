import os

current_work_directory = os.getcwd() # get current working directory


hdl_directory = current_work_directory + "\\rtl"
testbench_directory = current_work_directory + "\\testbench"


# delete filelist.f if exits
if os.path.isfile("filelist.f"):
    os.remove("filelist.f")

filelist = open("filelist.f", "w")

for hdl_file in os.listdir(hdl_directory):
    if hdl_file.endswith(".v"):
        filelist.write("./rtl/" + hdl_file + "\n")

for testbench_file in os.listdir(testbench_directory):
    if testbench_file.endswith(".v"):
        filelist.write("./testbench/" + testbench_file + "\n")

filelist.close()