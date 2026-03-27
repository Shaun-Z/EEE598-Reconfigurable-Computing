#!/usr/bin/env python3
"""Generate architecture XML variants for Part 2 experiments."""

import re
import os

BASE_ARCH = "/packages/apps/vtr/8.0.0-git/vtr_flow/arch/timing/k6_N10_40nm.xml"

with open(BASE_ARCH) as f:
    base_xml = f.read()

outdir = os.path.dirname(os.path.abspath(__file__))

def make_segment_block(length):
    sb = " ".join(["1"] * (length + 1))
    cb = " ".join(["1"] * length)
    return (
        f'    <segment freq="1.000000" length="{length}" type="unidir" Rmetal="101" Cmetal="22.5e-15">\n'
        f'      <mux name="0"/>\n'
        f'      <sb type="pattern">{sb}</sb>\n'
        f'      <cb type="pattern">{cb}</cb>\n'
        f'    </segment>'
    )

def set_segment_length(xml, length):
    pattern = r'<segment freq.*?</segment>'
    return re.sub(pattern, make_segment_block(length), xml, flags=re.DOTALL)

def set_fc(xml, fc_in, fc_out):
    # Replace fc values in both io and clb tiles
    def replace_fc(m):
        return f'<fc in_type="frac" in_val="{fc_in}" out_type="frac" out_val="{fc_out}"/>'
    return re.sub(r'<fc in_type="frac" in_val="[^"]*" out_type="frac" out_val="[^"]*"/>', replace_fc, xml)

# Experiment 1: Wire length variants (keep Fc at default 0.15/0.10)
for L in [1, 4, 16]:
    xml = set_segment_length(base_xml, L)
    fname = f"k6_N10_40nm_L{L}.xml"
    with open(os.path.join(outdir, fname), "w") as f:
        f.write(xml)
    print(f"Created {fname}")

# Experiment 2: Fc variants (keep L=4 default)
for fc in [0.15, 0.5, 1.0]:
    fc_str = str(fc)
    xml = set_fc(base_xml, fc_str, fc_str)
    fname = f"k6_N10_40nm_fc{fc_str}.xml"
    with open(os.path.join(outdir, fname), "w") as f:
        f.write(xml)
    print(f"Created {fname}")
