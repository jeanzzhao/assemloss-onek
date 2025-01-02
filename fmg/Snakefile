# load a list of sigpaths instead
import os.path

# Input file containing the list of metagenomic signatures
META_LIST = open("zyzhao-sigpaths-oct4.txt").readlines()
META_DICT = {}
for line in META_LIST:
    line = line.strip()
    acc = os.path.basename(line).split('.')[0]
    META_DICT[acc] = line

def get_filename(w):
    filename = META_DICT[w.acc]
    return filename

rule all:
    input:
        expand("fmg-smk/{acc}.fmg.csv", acc=META_DICT)


rule fmg:
    input:
        get_filename,
    output:
        "fmg-smk/{acc}.fmg.csv",
    shell: """
        sourmash scripts fastmultigather {input} gtdb-rs220-k21.rocksdb \
           -c 1 -s 10_000 -o {output} -t 0 -k 21
    """
