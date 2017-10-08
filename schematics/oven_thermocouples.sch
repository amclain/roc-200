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
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
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
<library name="con-amp-quick" urn="urn:adsk.eagle:library:125">
<description>&lt;b&gt;AMP Connectors, Type QUICK&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="08PA" urn="urn:adsk.eagle:footprint:5944/1" library_version="1">
<description>&lt;b&gt;AMP QUICK CONNECTOR&lt;/b&gt;</description>
<wire x1="-9.906" y1="8.763" x2="9.906" y2="8.763" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="8.763" x2="-9.906" y2="8.509" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="8.509" x2="-8.001" y2="8.509" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="8.509" x2="-7.62" y2="8.128" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="8.128" x2="-7.239" y2="8.509" width="0.1524" layer="21"/>
<wire x1="-7.239" y1="8.509" x2="7.239" y2="8.509" width="0.1524" layer="21"/>
<wire x1="7.239" y1="8.509" x2="7.62" y2="8.128" width="0.1524" layer="21"/>
<wire x1="7.62" y1="8.128" x2="8.001" y2="8.509" width="0.1524" layer="21"/>
<wire x1="8.001" y1="8.509" x2="9.906" y2="8.509" width="0.1524" layer="21"/>
<wire x1="9.906" y1="8.509" x2="9.906" y2="8.763" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="8.509" x2="-8.001" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="8.128" x2="-7.62" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-7.239" y1="8.509" x2="-7.239" y2="5.842" width="0.1524" layer="21"/>
<wire x1="9.906" y1="5.842" x2="9.906" y2="8.509" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="5.842" x2="-7.874" y2="5.842" width="0.1524" layer="21"/>
<wire x1="8.001" y1="8.509" x2="8.001" y2="5.842" width="0.1524" layer="21"/>
<wire x1="8.001" y1="5.842" x2="8.636" y2="5.842" width="0.1524" layer="21"/>
<wire x1="8.636" y1="5.842" x2="9.144" y2="5.842" width="0.1524" layer="21"/>
<wire x1="9.144" y1="5.842" x2="9.906" y2="5.842" width="0.1524" layer="21"/>
<wire x1="7.239" y1="8.509" x2="7.239" y2="5.842" width="0.1524" layer="21"/>
<wire x1="7.239" y1="5.842" x2="7.366" y2="5.842" width="0.1524" layer="21"/>
<wire x1="7.366" y1="5.842" x2="7.62" y2="5.842" width="0.1524" layer="21"/>
<wire x1="7.62" y1="8.128" x2="7.62" y2="5.842" width="0.1524" layer="21"/>
<wire x1="7.62" y1="5.842" x2="7.874" y2="5.842" width="0.1524" layer="21"/>
<wire x1="7.874" y1="5.842" x2="8.001" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="5.842" x2="-7.366" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="5.842" x2="-7.239" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="5.842" x2="-7.62" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-0.381" x2="-8.382" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-9.906" y1="-0.127" x2="-9.398" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-9.906" y1="8.509" x2="-9.906" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="5.842" x2="-9.906" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="-0.381" x2="-9.398" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-9.398" y1="-0.381" x2="-9.906" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-7.874" y1="-0.127" x2="-8.382" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-7.874" y1="5.842" x2="-7.874" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-0.127" x2="-7.874" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="-0.381" x2="-8.382" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-9.906" y1="5.842" x2="-9.144" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-9.144" y1="5.842" x2="-8.636" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="5.842" x2="-8.001" y2="5.842" width="0.1524" layer="21"/>
<wire x1="1.143" y1="8.001" x2="1.397" y2="8.001" width="0.1524" layer="21"/>
<wire x1="1.397" y1="8.001" x2="1.524" y2="7.366" width="0.1524" layer="21"/>
<wire x1="1.524" y1="7.366" x2="1.016" y2="7.366" width="0.1524" layer="21"/>
<wire x1="1.016" y1="7.366" x2="1.143" y2="8.001" width="0.1524" layer="21"/>
<wire x1="1.016" y1="7.366" x2="1.016" y2="5.842" width="0.1524" layer="21"/>
<wire x1="1.524" y1="7.366" x2="1.524" y2="5.842" width="0.1524" layer="21"/>
<wire x1="1.524" y1="5.842" x2="2.286" y2="5.842" width="0.1524" layer="21"/>
<wire x1="2.286" y1="5.842" x2="2.794" y2="5.842" width="0.1524" layer="21"/>
<wire x1="2.794" y1="5.842" x2="3.556" y2="5.842" width="0.1524" layer="21"/>
<wire x1="3.556" y1="5.842" x2="4.064" y2="5.842" width="0.1524" layer="21"/>
<wire x1="4.064" y1="5.842" x2="4.826" y2="5.842" width="0.1524" layer="21"/>
<wire x1="4.826" y1="5.842" x2="5.334" y2="5.842" width="0.1524" layer="21"/>
<wire x1="5.334" y1="5.842" x2="6.096" y2="5.842" width="0.1524" layer="21"/>
<wire x1="6.096" y1="5.842" x2="6.604" y2="5.842" width="0.1524" layer="21"/>
<wire x1="6.604" y1="5.842" x2="7.239" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-7.239" y1="5.842" x2="-6.604" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="5.842" x2="-6.096" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="5.842" x2="-5.334" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="5.842" x2="-4.826" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="5.842" x2="-4.064" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="5.842" x2="-3.556" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="5.842" x2="-2.794" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="5.842" x2="-2.286" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="5.842" x2="-1.524" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="5.842" x2="-1.016" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="5.842" x2="-0.254" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="5.842" x2="0.254" y2="5.842" width="0.1524" layer="21"/>
<wire x1="0.254" y1="5.842" x2="1.016" y2="5.842" width="0.1524" layer="21"/>
<wire x1="1.016" y1="5.842" x2="1.524" y2="5.842" width="0.1524" layer="21"/>
<wire x1="8.763" y1="8.001" x2="9.017" y2="8.001" width="0.1524" layer="21"/>
<wire x1="9.017" y1="8.001" x2="9.144" y2="7.366" width="0.1524" layer="21"/>
<wire x1="9.144" y1="7.366" x2="8.636" y2="7.366" width="0.1524" layer="21"/>
<wire x1="8.636" y1="7.366" x2="8.763" y2="8.001" width="0.1524" layer="21"/>
<wire x1="8.636" y1="7.366" x2="8.636" y2="5.842" width="0.1524" layer="21"/>
<wire x1="9.144" y1="7.366" x2="9.144" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="8.001" x2="-1.143" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="8.001" x2="-1.016" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="7.366" x2="-1.524" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="7.366" x2="-1.397" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="7.366" x2="-1.524" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="7.366" x2="-1.016" y2="5.842" width="0.1524" layer="21"/>
<wire x1="3.683" y1="8.001" x2="3.937" y2="8.001" width="0.1524" layer="21"/>
<wire x1="3.937" y1="8.001" x2="4.064" y2="7.366" width="0.1524" layer="21"/>
<wire x1="4.064" y1="7.366" x2="3.556" y2="7.366" width="0.1524" layer="21"/>
<wire x1="3.556" y1="7.366" x2="3.683" y2="8.001" width="0.1524" layer="21"/>
<wire x1="3.556" y1="7.366" x2="3.556" y2="5.842" width="0.1524" layer="21"/>
<wire x1="4.064" y1="7.366" x2="4.064" y2="5.842" width="0.1524" layer="21"/>
<wire x1="6.223" y1="8.001" x2="6.477" y2="8.001" width="0.1524" layer="21"/>
<wire x1="6.477" y1="8.001" x2="6.604" y2="7.366" width="0.1524" layer="21"/>
<wire x1="6.604" y1="7.366" x2="6.096" y2="7.366" width="0.1524" layer="21"/>
<wire x1="6.096" y1="7.366" x2="6.223" y2="8.001" width="0.1524" layer="21"/>
<wire x1="6.096" y1="7.366" x2="6.096" y2="5.842" width="0.1524" layer="21"/>
<wire x1="6.604" y1="7.366" x2="6.604" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="8.001" x2="-3.683" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="8.001" x2="-3.556" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="7.366" x2="-4.064" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="7.366" x2="-3.937" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="7.366" x2="-4.064" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="7.366" x2="-3.556" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="8.001" x2="-6.223" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-6.223" y1="8.001" x2="-6.096" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="7.366" x2="-6.604" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="7.366" x2="-6.477" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="7.366" x2="-6.604" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="7.366" x2="-6.096" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="8.001" x2="-8.763" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="8.001" x2="-8.636" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="7.366" x2="-9.144" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-9.144" y1="7.366" x2="-9.017" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-9.144" y1="7.366" x2="-9.144" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="7.366" x2="-8.636" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="-0.381" x2="-8.636" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-8.636" y1="-0.381" x2="-9.144" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-9.144" y1="-0.381" x2="-9.144" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-9.144" y1="-0.127" x2="-9.398" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-8.382" y1="-0.127" x2="-8.636" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="-0.127" x2="-7.874" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="5.842" x2="-7.366" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="-0.381" x2="-5.842" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="-0.127" x2="-6.858" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="-0.127" x2="-7.366" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-6.858" y1="-0.381" x2="-6.858" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-6.858" y1="-0.381" x2="-7.366" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-0.127" x2="-5.842" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="5.842" x2="-5.334" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="-0.127" x2="-5.334" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="-0.381" x2="-5.842" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-6.096" y1="-0.381" x2="-6.096" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-6.096" y1="-0.381" x2="-6.604" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="-0.381" x2="-6.604" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="-0.127" x2="-6.858" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-5.842" y1="-0.127" x2="-6.096" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="-0.127" x2="-5.334" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="5.842" x2="-4.826" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="-0.381" x2="-3.302" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="-0.127" x2="-4.318" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="-0.127" x2="-4.826" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="-0.381" x2="-4.318" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-4.318" y1="-0.381" x2="-4.826" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="-0.127" x2="-3.302" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="5.842" x2="-2.794" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="-0.127" x2="-2.794" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="-0.381" x2="-3.302" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-3.556" y1="-0.381" x2="-3.556" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-3.556" y1="-0.381" x2="-4.064" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="-0.381" x2="-4.064" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="-0.127" x2="-4.318" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="-0.127" x2="-3.556" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-0.127" x2="-2.794" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="5.842" x2="-2.286" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-0.381" x2="-0.762" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-0.127" x2="-1.778" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-0.127" x2="-2.286" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.381" x2="-1.778" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="-0.381" x2="-2.286" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-0.127" x2="-0.762" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="5.842" x2="-0.254" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-0.127" x2="-0.254" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-0.381" x2="-0.762" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-0.381" x2="-1.016" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-0.381" x2="-1.524" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="-0.381" x2="-1.524" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="-0.127" x2="-1.778" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="-0.127" x2="-1.016" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="0.254" y1="-0.127" x2="-0.254" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="0.254" y1="5.842" x2="0.254" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-0.381" x2="1.778" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="0.254" y1="-0.127" x2="0.762" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="0.254" y1="-0.127" x2="0.254" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-0.381" x2="0.762" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="0.762" y1="-0.381" x2="0.254" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="2.286" y1="-0.127" x2="1.778" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="2.286" y1="5.842" x2="2.286" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-0.127" x2="2.286" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.381" x2="1.778" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.524" y1="-0.381" x2="1.524" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.524" y1="-0.381" x2="1.016" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.016" y1="-0.381" x2="1.016" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.016" y1="-0.127" x2="0.762" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.778" y1="-0.127" x2="1.524" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="2.794" y1="-0.127" x2="2.286" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="2.794" y1="5.842" x2="2.794" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-0.381" x2="4.318" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="2.794" y1="-0.127" x2="3.302" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="2.794" y1="-0.127" x2="2.794" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-0.381" x2="3.302" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="3.302" y1="-0.381" x2="2.794" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="4.826" y1="-0.127" x2="4.318" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="4.826" y1="5.842" x2="4.826" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-0.127" x2="4.826" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-0.381" x2="4.318" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="4.064" y1="-0.381" x2="4.064" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="4.064" y1="-0.381" x2="3.556" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="3.556" y1="-0.381" x2="3.556" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="3.556" y1="-0.127" x2="3.302" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="4.318" y1="-0.127" x2="4.064" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-0.127" x2="4.826" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="5.334" y1="5.842" x2="5.334" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="7.366" y1="-0.381" x2="6.858" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-0.127" x2="5.842" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-0.127" x2="5.334" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="5.842" y1="-0.381" x2="5.842" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="5.842" y1="-0.381" x2="5.334" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="7.366" y1="-0.127" x2="6.858" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="7.366" y1="5.842" x2="7.366" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="7.366" y1="-0.127" x2="7.366" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="6.858" y1="-0.381" x2="6.858" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="6.604" y1="-0.381" x2="6.604" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="6.604" y1="-0.381" x2="6.096" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="6.096" y1="-0.381" x2="6.096" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="6.096" y1="-0.127" x2="5.842" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="6.858" y1="-0.127" x2="6.604" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="7.874" y1="-0.127" x2="7.366" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="7.874" y1="5.842" x2="7.874" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="9.906" y1="-0.381" x2="9.398" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="7.874" y1="-0.127" x2="8.382" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="7.874" y1="-0.127" x2="7.874" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="8.382" y1="-0.381" x2="8.382" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="8.382" y1="-0.381" x2="7.874" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="9.906" y1="-0.127" x2="9.398" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="9.906" y1="5.842" x2="9.906" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="9.398" y1="-0.381" x2="9.398" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="9.144" y1="-0.381" x2="9.144" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="9.144" y1="-0.381" x2="8.636" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="8.636" y1="-0.381" x2="8.636" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="8.636" y1="-0.127" x2="8.382" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="9.398" y1="-0.127" x2="9.144" y2="-0.127" width="0.1524" layer="51"/>
<pad name="1" x="-8.89" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="0" drill="0.9144" shape="long" rot="R90"/>
<text x="-9.271" y="1.3208" size="1.27" layer="21" ratio="10">1</text>
<text x="8.1788" y="1.2192" size="1.27" layer="21" ratio="10">8</text>
<text x="-9.906" y="9.1694" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-9.906" y="-2.3114" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="1.016" y1="5.842" x2="1.524" y2="7.366" layer="21"/>
<rectangle x1="1.143" y1="7.366" x2="1.397" y2="8.001" layer="21"/>
<rectangle x1="1.397" y1="7.366" x2="1.524" y2="7.62" layer="21"/>
<rectangle x1="1.016" y1="7.366" x2="1.143" y2="7.62" layer="21"/>
<rectangle x1="8.636" y1="5.842" x2="9.144" y2="7.366" layer="21"/>
<rectangle x1="8.763" y1="7.366" x2="9.017" y2="8.001" layer="21"/>
<rectangle x1="9.017" y1="7.366" x2="9.144" y2="7.62" layer="21"/>
<rectangle x1="8.636" y1="7.366" x2="8.763" y2="7.62" layer="21"/>
<rectangle x1="-1.524" y1="5.842" x2="-1.016" y2="7.366" layer="21"/>
<rectangle x1="-1.397" y1="7.366" x2="-1.143" y2="8.001" layer="21"/>
<rectangle x1="-1.143" y1="7.366" x2="-1.016" y2="7.62" layer="21"/>
<rectangle x1="-1.524" y1="7.366" x2="-1.397" y2="7.62" layer="21"/>
<rectangle x1="3.556" y1="5.842" x2="4.064" y2="7.366" layer="21"/>
<rectangle x1="3.683" y1="7.366" x2="3.937" y2="8.001" layer="21"/>
<rectangle x1="3.937" y1="7.366" x2="4.064" y2="7.62" layer="21"/>
<rectangle x1="3.556" y1="7.366" x2="3.683" y2="7.62" layer="21"/>
<rectangle x1="6.096" y1="5.842" x2="6.604" y2="7.366" layer="21"/>
<rectangle x1="6.223" y1="7.366" x2="6.477" y2="8.001" layer="21"/>
<rectangle x1="6.477" y1="7.366" x2="6.604" y2="7.62" layer="21"/>
<rectangle x1="6.096" y1="7.366" x2="6.223" y2="7.62" layer="21"/>
<rectangle x1="-4.064" y1="5.842" x2="-3.556" y2="7.366" layer="21"/>
<rectangle x1="-3.937" y1="7.366" x2="-3.683" y2="8.001" layer="21"/>
<rectangle x1="-3.683" y1="7.366" x2="-3.556" y2="7.62" layer="21"/>
<rectangle x1="-4.064" y1="7.366" x2="-3.937" y2="7.62" layer="21"/>
<rectangle x1="-6.604" y1="5.842" x2="-6.096" y2="7.366" layer="21"/>
<rectangle x1="-6.477" y1="7.366" x2="-6.223" y2="8.001" layer="21"/>
<rectangle x1="-6.223" y1="7.366" x2="-6.096" y2="7.62" layer="21"/>
<rectangle x1="-6.604" y1="7.366" x2="-6.477" y2="7.62" layer="21"/>
<rectangle x1="-9.144" y1="5.842" x2="-8.636" y2="7.366" layer="21"/>
<rectangle x1="-9.017" y1="7.366" x2="-8.763" y2="8.001" layer="21"/>
<rectangle x1="-8.763" y1="7.366" x2="-8.636" y2="7.62" layer="21"/>
<rectangle x1="-9.144" y1="7.366" x2="-9.017" y2="7.62" layer="21"/>
</package>
<package name="06PA" urn="urn:adsk.eagle:footprint:5942/1" library_version="1">
<description>&lt;b&gt;AMP QUICK CONNECTOR&lt;/b&gt;</description>
<wire x1="-7.366" y1="8.763" x2="7.366" y2="8.763" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="8.763" x2="-7.366" y2="8.509" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="8.509" x2="-5.461" y2="8.509" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="8.509" x2="-5.08" y2="8.128" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="8.128" x2="-4.699" y2="8.509" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="8.509" x2="4.699" y2="8.509" width="0.1524" layer="21"/>
<wire x1="4.699" y1="8.509" x2="5.08" y2="8.128" width="0.1524" layer="21"/>
<wire x1="5.08" y1="8.128" x2="5.461" y2="8.509" width="0.1524" layer="21"/>
<wire x1="5.461" y1="8.509" x2="7.366" y2="8.509" width="0.1524" layer="21"/>
<wire x1="7.366" y1="8.509" x2="7.366" y2="8.763" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="8.509" x2="-5.461" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="8.128" x2="-5.08" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="8.509" x2="-4.699" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="5.842" x2="-5.334" y2="5.842" width="0.1524" layer="21"/>
<wire x1="5.461" y1="8.509" x2="5.461" y2="5.842" width="0.1524" layer="21"/>
<wire x1="4.699" y1="8.509" x2="4.699" y2="5.842" width="0.1524" layer="21"/>
<wire x1="5.08" y1="8.128" x2="5.08" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="5.842" x2="-4.826" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="5.842" x2="-4.699" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="5.842" x2="-5.08" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="-0.381" x2="-5.842" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="-0.127" x2="-6.858" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="8.509" x2="-7.366" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="5.842" x2="-7.366" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-6.858" y1="-0.381" x2="-6.858" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-6.858" y1="-0.381" x2="-7.366" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-0.127" x2="-5.842" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="5.842" x2="-5.334" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="-0.127" x2="-5.334" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="-0.381" x2="-5.842" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="5.842" x2="-6.604" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="5.842" x2="-6.096" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="5.842" x2="-5.461" y2="5.842" width="0.1524" layer="21"/>
<wire x1="3.683" y1="8.001" x2="3.937" y2="8.001" width="0.1524" layer="21"/>
<wire x1="3.937" y1="8.001" x2="4.064" y2="7.366" width="0.1524" layer="21"/>
<wire x1="4.064" y1="7.366" x2="3.556" y2="7.366" width="0.1524" layer="21"/>
<wire x1="3.556" y1="7.366" x2="3.683" y2="8.001" width="0.1524" layer="21"/>
<wire x1="3.556" y1="7.366" x2="3.556" y2="5.842" width="0.1524" layer="21"/>
<wire x1="4.064" y1="7.366" x2="4.064" y2="5.842" width="0.1524" layer="21"/>
<wire x1="4.064" y1="5.842" x2="4.826" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="5.842" x2="-4.064" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="5.842" x2="-3.556" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="5.842" x2="-2.794" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="5.842" x2="-2.286" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="5.842" x2="-1.524" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="5.842" x2="-1.016" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="5.842" x2="-0.254" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="5.842" x2="0.254" y2="5.842" width="0.1524" layer="21"/>
<wire x1="0.254" y1="5.842" x2="1.016" y2="5.842" width="0.1524" layer="21"/>
<wire x1="1.016" y1="5.842" x2="1.524" y2="5.842" width="0.1524" layer="21"/>
<wire x1="1.524" y1="5.842" x2="2.286" y2="5.842" width="0.1524" layer="21"/>
<wire x1="2.286" y1="5.842" x2="2.794" y2="5.842" width="0.1524" layer="21"/>
<wire x1="2.794" y1="5.842" x2="3.556" y2="5.842" width="0.1524" layer="21"/>
<wire x1="3.556" y1="5.842" x2="4.064" y2="5.842" width="0.1524" layer="21"/>
<wire x1="1.143" y1="8.001" x2="1.397" y2="8.001" width="0.1524" layer="21"/>
<wire x1="1.397" y1="8.001" x2="1.524" y2="7.366" width="0.1524" layer="21"/>
<wire x1="1.524" y1="7.366" x2="1.016" y2="7.366" width="0.1524" layer="21"/>
<wire x1="1.016" y1="7.366" x2="1.143" y2="8.001" width="0.1524" layer="21"/>
<wire x1="1.016" y1="7.366" x2="1.016" y2="5.842" width="0.1524" layer="21"/>
<wire x1="1.524" y1="7.366" x2="1.524" y2="5.842" width="0.1524" layer="21"/>
<wire x1="6.223" y1="8.001" x2="6.477" y2="8.001" width="0.1524" layer="21"/>
<wire x1="6.477" y1="8.001" x2="6.604" y2="7.366" width="0.1524" layer="21"/>
<wire x1="6.604" y1="7.366" x2="6.096" y2="7.366" width="0.1524" layer="21"/>
<wire x1="6.096" y1="7.366" x2="6.223" y2="8.001" width="0.1524" layer="21"/>
<wire x1="6.096" y1="7.366" x2="6.096" y2="5.842" width="0.1524" layer="21"/>
<wire x1="6.604" y1="7.366" x2="6.604" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="8.001" x2="-1.143" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="8.001" x2="-1.016" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="7.366" x2="-1.524" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="7.366" x2="-1.397" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="7.366" x2="-1.524" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="7.366" x2="-1.016" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="8.001" x2="-3.683" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="8.001" x2="-3.556" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="7.366" x2="-4.064" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="7.366" x2="-3.937" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="7.366" x2="-4.064" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="7.366" x2="-3.556" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="8.001" x2="-6.223" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-6.223" y1="8.001" x2="-6.096" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="7.366" x2="-6.604" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="7.366" x2="-6.477" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="7.366" x2="-6.604" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="7.366" x2="-6.096" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="-0.381" x2="-6.096" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-6.096" y1="-0.381" x2="-6.604" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="-0.381" x2="-6.604" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="-0.127" x2="-6.858" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-5.842" y1="-0.127" x2="-6.096" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="-0.127" x2="-5.334" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="5.842" x2="-4.826" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="-0.381" x2="-3.302" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="-0.127" x2="-4.318" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="-0.127" x2="-4.826" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="-0.381" x2="-4.318" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-4.318" y1="-0.381" x2="-4.826" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="-0.127" x2="-3.302" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="5.842" x2="-2.794" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="-0.127" x2="-2.794" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="-0.381" x2="-3.302" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-3.556" y1="-0.381" x2="-3.556" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-3.556" y1="-0.381" x2="-4.064" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="-0.381" x2="-4.064" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="-0.127" x2="-4.318" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="-0.127" x2="-3.556" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-0.127" x2="-2.794" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="5.842" x2="-2.286" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-0.381" x2="-0.762" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-0.127" x2="-1.778" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-0.127" x2="-2.286" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.381" x2="-1.778" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="-0.381" x2="-2.286" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-0.127" x2="-0.762" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="5.842" x2="-0.254" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-0.127" x2="-0.254" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-0.381" x2="-0.762" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-0.381" x2="-1.016" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-0.381" x2="-1.524" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="-0.381" x2="-1.524" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="-0.127" x2="-1.778" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="-0.127" x2="-1.016" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="0.254" y1="-0.127" x2="-0.254" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="0.254" y1="5.842" x2="0.254" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-0.381" x2="1.778" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="0.254" y1="-0.127" x2="0.762" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="0.254" y1="-0.127" x2="0.254" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-0.381" x2="0.762" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="0.762" y1="-0.381" x2="0.254" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="2.286" y1="-0.127" x2="1.778" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="2.286" y1="5.842" x2="2.286" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-0.127" x2="2.286" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.381" x2="1.778" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.524" y1="-0.381" x2="1.524" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.524" y1="-0.381" x2="1.016" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.016" y1="-0.381" x2="1.016" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.016" y1="-0.127" x2="0.762" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.778" y1="-0.127" x2="1.524" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="2.794" y1="-0.127" x2="2.286" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="2.794" y1="5.842" x2="2.794" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-0.381" x2="4.318" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="2.794" y1="-0.127" x2="3.302" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="2.794" y1="-0.127" x2="2.794" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-0.381" x2="3.302" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="3.302" y1="-0.381" x2="2.794" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="4.826" y1="-0.127" x2="4.318" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="4.826" y1="5.842" x2="4.826" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-0.127" x2="4.826" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-0.381" x2="4.318" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="4.064" y1="-0.381" x2="4.064" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="4.064" y1="-0.381" x2="3.556" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="3.556" y1="-0.381" x2="3.556" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="3.556" y1="-0.127" x2="3.302" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="4.318" y1="-0.127" x2="4.064" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-0.127" x2="4.826" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="5.334" y1="5.842" x2="5.334" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="7.366" y1="-0.381" x2="6.858" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-0.127" x2="5.842" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-0.127" x2="5.334" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="5.842" y1="-0.381" x2="5.842" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="5.842" y1="-0.381" x2="5.334" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="7.366" y1="-0.127" x2="6.858" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="7.366" y1="8.509" x2="7.366" y2="5.842" width="0.1524" layer="21"/>
<wire x1="7.366" y1="5.842" x2="7.366" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="6.858" y1="-0.381" x2="6.858" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="6.604" y1="-0.381" x2="6.604" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="6.604" y1="-0.381" x2="6.096" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="6.096" y1="-0.381" x2="6.096" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="6.096" y1="-0.127" x2="5.842" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="6.858" y1="-0.127" x2="6.604" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="5.334" y1="5.842" x2="7.366" y2="5.842" width="0.1524" layer="21"/>
<wire x1="4.826" y1="5.842" x2="5.08" y2="5.842" width="0.1524" layer="21"/>
<wire x1="5.08" y1="5.842" x2="5.334" y2="5.842" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="2" x="-3.81" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="3" x="-1.27" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="4" x="1.27" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="6" x="6.35" y="0" drill="0.9144" shape="long" rot="R90"/>
<text x="-6.731" y="1.3208" size="1.27" layer="21" ratio="10">1</text>
<text x="-7.366" y="9.1694" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-7.366" y="-2.1844" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="5.7658" y="1.2192" size="1.27" layer="21" ratio="10">6</text>
<rectangle x1="3.556" y1="5.842" x2="4.064" y2="7.366" layer="21"/>
<rectangle x1="3.683" y1="7.366" x2="3.937" y2="8.001" layer="21"/>
<rectangle x1="3.937" y1="7.366" x2="4.064" y2="7.62" layer="21"/>
<rectangle x1="3.556" y1="7.366" x2="3.683" y2="7.62" layer="21"/>
<rectangle x1="1.016" y1="5.842" x2="1.524" y2="7.366" layer="21"/>
<rectangle x1="1.143" y1="7.366" x2="1.397" y2="8.001" layer="21"/>
<rectangle x1="1.397" y1="7.366" x2="1.524" y2="7.62" layer="21"/>
<rectangle x1="1.016" y1="7.366" x2="1.143" y2="7.62" layer="21"/>
<rectangle x1="6.096" y1="5.842" x2="6.604" y2="7.366" layer="21"/>
<rectangle x1="6.223" y1="7.366" x2="6.477" y2="8.001" layer="21"/>
<rectangle x1="6.477" y1="7.366" x2="6.604" y2="7.62" layer="21"/>
<rectangle x1="6.096" y1="7.366" x2="6.223" y2="7.62" layer="21"/>
<rectangle x1="-1.524" y1="5.842" x2="-1.016" y2="7.366" layer="21"/>
<rectangle x1="-1.397" y1="7.366" x2="-1.143" y2="8.001" layer="21"/>
<rectangle x1="-1.143" y1="7.366" x2="-1.016" y2="7.62" layer="21"/>
<rectangle x1="-1.524" y1="7.366" x2="-1.397" y2="7.62" layer="21"/>
<rectangle x1="-4.064" y1="5.842" x2="-3.556" y2="7.366" layer="21"/>
<rectangle x1="-3.937" y1="7.366" x2="-3.683" y2="8.001" layer="21"/>
<rectangle x1="-3.683" y1="7.366" x2="-3.556" y2="7.62" layer="21"/>
<rectangle x1="-4.064" y1="7.366" x2="-3.937" y2="7.62" layer="21"/>
<rectangle x1="-6.604" y1="5.842" x2="-6.096" y2="7.366" layer="21"/>
<rectangle x1="-6.477" y1="7.366" x2="-6.223" y2="8.001" layer="21"/>
<rectangle x1="-6.223" y1="7.366" x2="-6.096" y2="7.62" layer="21"/>
<rectangle x1="-6.604" y1="7.366" x2="-6.477" y2="7.62" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="08PA" urn="urn:adsk.eagle:package:5975/1" type="box" library_version="1">
<description>AMP QUICK CONNECTOR</description>
</package3d>
<package3d name="06PA" urn="urn:adsk.eagle:package:5974/1" type="box" library_version="1">
<description>AMP QUICK CONNECTOR</description>
</package3d>
</packages3d>
<symbols>
<symbol name="M08" urn="urn:adsk.eagle:symbol:5921/1" library_version="1">
<wire x1="1.27" y1="-10.16" x2="-5.08" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="0" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-5.08" x2="0" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-7.62" x2="0" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="-5.08" y1="12.7" x2="-5.08" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-10.16" x2="1.27" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="12.7" x2="1.27" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="0" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="0" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="0" y2="7.62" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="10.16" x2="0" y2="10.16" width="0.6096" layer="94"/>
<text x="-5.08" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<text x="-5.08" y="13.462" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="5.08" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="5.08" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="5.08" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="5.08" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="5.08" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="5.08" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="5.08" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="5.08" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="M06" urn="urn:adsk.eagle:symbol:5916/1" library_version="1">
<wire x1="1.27" y1="-7.62" x2="-5.08" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="0" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-5.08" x2="0" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-5.08" y1="10.16" x2="-5.08" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="1.27" y2="10.16" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="10.16" x2="1.27" y2="10.16" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="0" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="0" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="0" y2="7.62" width="0.6096" layer="94"/>
<text x="-5.08" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-5.08" y="10.922" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="5.08" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="5.08" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="5.08" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="5.08" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="5.08" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="5.08" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA08" urn="urn:adsk.eagle:component:6021/1" prefix="SL" uservalue="yes" library_version="1">
<description>&lt;b&gt;AMP QUICK CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="M08" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="08PA">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5975/1"/>
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
<deviceset name="MA06" urn="urn:adsk.eagle:component:6019/1" prefix="SL" uservalue="yes" library_version="1">
<description>&lt;b&gt;AMP QUICK CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="M06" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="06PA">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5974/1"/>
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
<attribute name="DATE_DRAWN" value="2017-10-07"/>
<attribute name="DRAWN_BY" value="AM"/>
<attribute name="REV" value=""/>
<attribute name="SHEET_NUM" value=""/>
<attribute name="TITLE" value="OVEN THERMOCOUPLES"/>
</part>
<part name="J1" library="con-amp-quick" library_urn="urn:adsk.eagle:library:125" deviceset="MA08" device="" package3d_urn="urn:adsk.eagle:package:5975/1"/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="J2" library="con-amp-quick" library_urn="urn:adsk.eagle:library:125" deviceset="MA06" device="" package3d_urn="urn:adsk.eagle:package:5974/1"/>
<part name="J3" library="con-amp-quick" library_urn="urn:adsk.eagle:library:125" deviceset="MA06" device="" package3d_urn="urn:adsk.eagle:package:5974/1"/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="92.71" y="127.254" size="1.778" layer="97" rot="R180">To Controller Main Board J2</text>
<text x="158.75" y="125.73" size="1.778" layer="97">MAX31855 Breakout
Top Thermocouple</text>
<text x="158.75" y="92.71" size="1.778" layer="97">MAX31855 Breakout
Bottom Thermocouple</text>
<text x="96.774" y="119.888" size="1.27" layer="97">CLK</text>
<text x="96.774" y="117.348" size="1.27" layer="97">MISO</text>
<text x="96.774" y="114.808" size="1.27" layer="97">CS0</text>
<text x="96.774" y="112.268" size="1.27" layer="97">CS1</text>
<text x="154.94" y="122.428" size="1.27" layer="97" align="bottom-right">Vin</text>
<text x="154.94" y="117.348" size="1.27" layer="97" align="bottom-right">GND</text>
<text x="154.94" y="114.808" size="1.27" layer="97" align="bottom-right">DO</text>
<text x="154.94" y="112.268" size="1.27" layer="97" align="bottom-right">CS</text>
<text x="154.94" y="109.728" size="1.27" layer="97" align="bottom-right">CLK</text>
<text x="154.94" y="89.408" size="1.27" layer="97" align="bottom-right">Vin</text>
<text x="154.94" y="84.328" size="1.27" layer="97" align="bottom-right">GND</text>
<text x="154.94" y="81.788" size="1.27" layer="97" align="bottom-right">DO</text>
<text x="154.94" y="79.248" size="1.27" layer="97" align="bottom-right">CS</text>
<text x="154.94" y="76.708" size="1.27" layer="97" align="bottom-right">CLK</text>
<text x="96.774" y="122.428" size="1.27" layer="97">VCC</text>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="FRAME1" gate="G$2" x="147.32" y="0"/>
<instance part="J1" gate="G$1" x="91.44" y="114.3" rot="MR180"/>
<instance part="GND1" gate="1" x="99.06" y="96.52"/>
<instance part="J2" gate="G$1" x="160.02" y="116.84" rot="R180"/>
<instance part="J3" gate="G$1" x="160.02" y="83.82" rot="R180"/>
<instance part="GND2" gate="1" x="147.32" y="68.58"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="8"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="96.52" y1="104.14" x2="99.06" y2="104.14" width="0.1524" layer="91"/>
<wire x1="99.06" y1="104.14" x2="99.06" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J2" gate="G$1" pin="3"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="154.94" y1="116.84" x2="147.32" y2="116.84" width="0.1524" layer="91"/>
<wire x1="147.32" y1="116.84" x2="147.32" y2="83.82" width="0.1524" layer="91"/>
<pinref part="J3" gate="G$1" pin="3"/>
<wire x1="147.32" y1="83.82" x2="147.32" y2="71.12" width="0.1524" layer="91"/>
<wire x1="154.94" y1="83.82" x2="147.32" y2="83.82" width="0.1524" layer="91"/>
<junction x="147.32" y="83.82"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="2"/>
<wire x1="96.52" y1="119.38" x2="134.62" y2="119.38" width="0.1524" layer="91"/>
<wire x1="134.62" y1="119.38" x2="134.62" y2="109.22" width="0.1524" layer="91"/>
<pinref part="J2" gate="G$1" pin="6"/>
<wire x1="134.62" y1="109.22" x2="154.94" y2="109.22" width="0.1524" layer="91"/>
<wire x1="134.62" y1="109.22" x2="134.62" y2="76.2" width="0.1524" layer="91"/>
<junction x="134.62" y="109.22"/>
<pinref part="J3" gate="G$1" pin="6"/>
<wire x1="134.62" y1="76.2" x2="154.94" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="3"/>
<wire x1="96.52" y1="116.84" x2="132.08" y2="116.84" width="0.1524" layer="91"/>
<wire x1="132.08" y1="116.84" x2="132.08" y2="114.3" width="0.1524" layer="91"/>
<pinref part="J2" gate="G$1" pin="4"/>
<wire x1="132.08" y1="114.3" x2="154.94" y2="114.3" width="0.1524" layer="91"/>
<wire x1="132.08" y1="114.3" x2="132.08" y2="81.28" width="0.1524" layer="91"/>
<junction x="132.08" y="114.3"/>
<pinref part="J3" gate="G$1" pin="4"/>
<wire x1="132.08" y1="81.28" x2="154.94" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="4"/>
<wire x1="96.52" y1="114.3" x2="129.54" y2="114.3" width="0.1524" layer="91"/>
<wire x1="129.54" y1="114.3" x2="129.54" y2="111.76" width="0.1524" layer="91"/>
<pinref part="J2" gate="G$1" pin="5"/>
<wire x1="154.94" y1="111.76" x2="129.54" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="5"/>
<wire x1="96.52" y1="111.76" x2="127" y2="111.76" width="0.1524" layer="91"/>
<wire x1="127" y1="111.76" x2="127" y2="78.74" width="0.1524" layer="91"/>
<pinref part="J3" gate="G$1" pin="5"/>
<wire x1="127" y1="78.74" x2="154.94" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="1"/>
<pinref part="J2" gate="G$1" pin="1"/>
<wire x1="144.78" y1="121.92" x2="154.94" y2="121.92" width="0.1524" layer="91"/>
<wire x1="144.78" y1="121.92" x2="144.78" y2="88.9" width="0.1524" layer="91"/>
<pinref part="J3" gate="G$1" pin="1"/>
<wire x1="144.78" y1="88.9" x2="154.94" y2="88.9" width="0.1524" layer="91"/>
<wire x1="96.52" y1="121.92" x2="144.78" y2="121.92" width="0.1524" layer="91"/>
<junction x="144.78" y="121.92"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
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
