# 📂 src/scan_ssis_xml.py - Extracción de datos desde XML de SSIS

import xml.etree.ElementTree as ET

def scan_ssis_package(xml_file):
    tree = ET.parse(xml_file)
    root = tree.getroot()
    
    sources = []
    destinations = []
    
    for element in root.iter():
        if 'source' in element.tag.lower():
            sources.append(element.attrib)
        elif 'destination' in element.tag.lower():
            destinations.append(element.attrib)
    
    return sources, destinations

if __name__ == "__main__":
    sources, destinations = scan_ssis_package("./ssis_package.xml")
    print("Orígenes:", sources)
    print("Destinos:", destinations)