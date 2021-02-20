import unittest

# the unittest.TestCase argument tells Python this is a test, not application level code

class TestS3(unittest.TestCase):
    def test_bucket_name_value(self):
        bucket = 'cloudskills808'

        self.assertEqual(bucket,'cloudskills808')  # the value on the right is going to be compared to the value on the left and assert whether or not they are equal
    
    def test_region_value(self):
        region = 'us-east-1'

        self.assertEqual(region,'us-east-1')
    
    def test_bucket_name_is_string(self):
        bucket = 'cloudskills808'

        self.assertTrue(type(bucket),str)  # here, we are asserting whether or not the argument is true (if it's a string)

    def test_region_is_string(self):
        region = 'us-east-1'

        self.assertTrue(type(region),str)

if __name__ == '__main__':
    unittest.main()  # this is a function in the unittest library