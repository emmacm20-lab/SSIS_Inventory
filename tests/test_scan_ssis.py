# 📂 tests/test_scan_ssis.py - Pruebas para extracción de XML de SSIS

import unittest
from src.scan_ssis_xml import scan_ssis_package

class TestSSISScan(unittest.TestCase):
    def test_scan(self):
        sources, destinations = scan_ssis_package("./tests/test_ssis.xml")
        self.assertIsInstance(sources, list)
        self.assertIsInstance(destinations, list)

if __name__ == "__main__":
    unittest.main()