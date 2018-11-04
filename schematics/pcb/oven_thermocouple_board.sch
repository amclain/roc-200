<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.3.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="frames">
<description>amclain's Frames for Sheet and Layout</description>
<packages>
</packages>
<symbols>
<symbol name="LETTER_L">
<frame x1="0" y1="0" x2="248.92" y2="185.42" columns="12" rows="17" layer="94" border-left="no" border-top="no" border-right="no" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="16.51" y2="5.08" width="0.1016" layer="94"/>
<wire x1="16.51" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="16.51" y2="15.24" width="0.1016" layer="94"/>
<wire x1="16.51" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.524" size="1.778" layer="94">DATE:</text>
<text x="9.906" y="1.524" size="1.778" layer="94">&gt;DATE_DRAWN</text>
<text x="72.39" y="1.524" size="1.778" layer="94">SHEET:</text>
<text x="82.804" y="1.524" size="1.778" layer="94">&gt;SHEET_NUM</text>
<text x="88.9" y="12.446" size="1.778" layer="94">REV:</text>
<text x="1.27" y="20.066" size="1.778" layer="94">TITLE:</text>
<text x="1.27" y="12.446" size="1.778" layer="94">DRAWN BY:</text>
<text x="50.8" y="17.78" size="2.54" layer="94" align="bottom-center">&gt;TITLE</text>
<text x="7.62" y="7.62" size="2.54" layer="94" align="bottom-center">&gt;DRAWN_BY</text>
<text x="94.742" y="7.62" size="2.54" layer="94" align="bottom-center">&gt;REV</text>
<text x="50.8" y="27.432" size="3.175" layer="94" align="bottom-center">&gt;COMPANY_NAME</text>
<wire x1="16.51" y1="15.24" x2="16.51" y2="5.08" width="0.1016" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LETTER_L" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
LETTER landscape</description>
<gates>
<gate name="G$1" symbol="LETTER_L" x="0" y="0"/>
<gate name="G$2" symbol="DOCFIELD" x="147.32" y="0" addlevel="must"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="COMPANY_NAME" value="COMPANY_NAME" constant="no"/>
<attribute name="DATE_DRAWN" value="DATE_DRAWN" constant="no"/>
<attribute name="DRAWN_BY" value="AAA" constant="no"/>
<attribute name="REV" value="A" constant="no"/>
<attribute name="SHEET_NUM" value="1/1" constant="no"/>
<attribute name="TITLE" value="TITLE" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-phoenix-254" urn="urn:adsk.eagle:library:172">
<description>&lt;b&gt;Phoenix Connectors&lt;/b&gt;&lt;p&gt;
Grid 2.54 mm&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="8POL254" urn="urn:adsk.eagle:footprint:9311/1" library_version="1">
<description>&lt;b&gt;PHOENIX CONNECTOR&lt;/b&gt;</description>
<wire x1="-10.29" y1="-1.45" x2="10.29" y2="-1.45" width="0.254" layer="21"/>
<wire x1="10.29" y1="-1.45" x2="10.29" y2="1.45" width="0.254" layer="21"/>
<wire x1="10.29" y1="1.45" x2="-10.29" y2="1.45" width="0.254" layer="21"/>
<wire x1="-10.29" y1="1.45" x2="-10.29" y2="-1.45" width="0.254" layer="21"/>
<wire x1="-10.18" y1="1.1" x2="10.18" y2="1.1" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-0.508" x2="-8.382" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="-0.254" x2="-5.588" y2="0.127" width="0.1524" layer="51"/>
<wire x1="-4.318" y1="0.635" x2="-3.302" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-2.032" y1="0.381" x2="-0.508" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="0.762" y1="0.635" x2="1.778" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="3.048" y1="0.381" x2="4.572" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="5.842" y1="0.635" x2="6.858" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-0.508" x2="9.398" y2="0.635" width="0.1524" layer="51"/>
<circle x="-8.89" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-6.35" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-3.81" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="3.81" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="6.35" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="8.89" y="0" radius="0.889" width="0.1524" layer="51"/>
<pad name="1" x="-8.89" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="0" drill="1.2" shape="long" rot="R90"/>
<text x="-10.414" y="1.778" size="1.27" layer="25">&gt;NAME</text>
<text x="-10.414" y="-3.048" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="8POL254" urn="urn:adsk.eagle:package:9329/1" type="box" library_version="1">
<description>PHOENIX CONNECTOR</description>
</package3d>
</packages3d>
<symbols>
<symbol name="SKB" urn="urn:adsk.eagle:symbol:9303/1" library_version="1">
<wire x1="2.032" y1="0.762" x2="0.508" y2="-0.762" width="0.254" layer="94"/>
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="3.556" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-2.54" y="0" visible="pad" length="short" direction="pas"/>
</symbol>
<symbol name="SKBV" urn="urn:adsk.eagle:symbol:9304/1" library_version="1">
<wire x1="2.032" y1="0.762" x2="0.508" y2="-0.762" width="0.254" layer="94"/>
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="3.556" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.016" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="0" visible="pad" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MPT8" urn="urn:adsk.eagle:component:9335/1" prefix="X" uservalue="yes" library_version="1">
<description>&lt;b&gt;PHOENIX CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="SKB" x="0" y="12.7" addlevel="always"/>
<gate name="-2" symbol="SKB" x="0" y="7.62" addlevel="always"/>
<gate name="-3" symbol="SKB" x="0" y="2.54" addlevel="always"/>
<gate name="-4" symbol="SKB" x="0" y="-2.54" addlevel="always"/>
<gate name="-5" symbol="SKB" x="22.86" y="12.7" addlevel="always"/>
<gate name="-6" symbol="SKB" x="22.86" y="7.62" addlevel="always"/>
<gate name="-7" symbol="SKB" x="22.86" y="2.54" addlevel="always"/>
<gate name="-8" symbol="SKBV" x="22.86" y="-2.54" addlevel="always"/>
</gates>
<devices>
<device name="" package="8POL254">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-2" pin="1" pad="2"/>
<connect gate="-3" pin="1" pad="3"/>
<connect gate="-4" pin="1" pad="4"/>
<connect gate="-5" pin="1" pad="5"/>
<connect gate="-6" pin="1" pad="6"/>
<connect gate="-7" pin="1" pad="7"/>
<connect gate="-8" pin="1" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:9329/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2" urn="urn:adsk.eagle:library:372">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="VCC" urn="urn:adsk.eagle:symbol:26997/1" library_version="2">
<circle x="0" y="1.27" radius="1.27" width="0.254" layer="94"/>
<text x="-1.905" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VCC" urn="urn:adsk.eagle:component:27060/1" prefix="SUPPLY" library_version="2">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="FRAME1" library="frames" deviceset="LETTER_L" device="">
<attribute name="COMPANY_NAME" value="An Alex McLain Design"/>
<attribute name="DATE_DRAWN" value="2017-10-09"/>
<attribute name="DRAWN_BY" value="AM"/>
<attribute name="SHEET_NUM" value=""/>
<attribute name="TITLE" value="Oven Thermocouple Board"/>
</part>
<part name="J1" library="con-phoenix-254" library_urn="urn:adsk.eagle:library:172" deviceset="MPT8" device="" package3d_urn="urn:adsk.eagle:package:9329/1"/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="SUPPLY1" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="VCC" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="FRAME1" gate="G$2" x="147.32" y="0"/>
<instance part="J1" gate="-1" x="30.48" y="142.24" rot="MR0"/>
<instance part="J1" gate="-2" x="30.48" y="137.16" rot="MR0"/>
<instance part="J1" gate="-3" x="30.48" y="132.08" rot="MR0"/>
<instance part="J1" gate="-4" x="30.48" y="127" rot="MR0"/>
<instance part="J1" gate="-5" x="30.48" y="121.92" rot="MR0"/>
<instance part="J1" gate="-6" x="30.48" y="116.84" rot="MR0"/>
<instance part="J1" gate="-7" x="30.48" y="111.76" rot="MR0"/>
<instance part="J1" gate="-8" x="30.48" y="106.68" rot="MR0"/>
<instance part="GND1" gate="1" x="38.1" y="96.52"/>
<instance part="SUPPLY1" gate="G$1" x="38.1" y="152.4"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="J1" gate="-8" pin="1"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="33.02" y1="106.68" x2="38.1" y2="106.68" width="0.1524" layer="91"/>
<wire x1="38.1" y1="106.68" x2="38.1" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="J1" gate="-1" pin="1"/>
<pinref part="SUPPLY1" gate="G$1" pin="VCC"/>
<wire x1="33.02" y1="142.24" x2="38.1" y2="142.24" width="0.1524" layer="91"/>
<wire x1="38.1" y1="142.24" x2="38.1" y2="149.86" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
