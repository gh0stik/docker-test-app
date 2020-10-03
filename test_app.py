import unittest
from app import test_func

class TestTest_func(unittest.TestCase):

	def test_test_func(self):
		results = test_func(2, 7)
		self.assertEqual(results, 9)


	def test_test_func2(self):
                results = test_func(2, 8)
                self.assertEqual(results, 10)
