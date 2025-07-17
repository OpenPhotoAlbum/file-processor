#!/usr/bin/env python3
"""
Simple database connection test for geolocation tool.
"""

import sys

try:
    import mysql.connector
except ImportError:
    print("Error: mysql-connector-python not installed")
    print("Install with: pip install mysql-connector-python")
    sys.exit(1)

def test_connection():
    """Test MySQL connection and run a simple query."""
    
    db_config = {
        'host': '127.0.0.1',
        'port': 3309,
        'user': 'kin',
        'password': 'Dalekini21!',
        'database': 'kin'
    }
    
    try:
        print("Connecting to MySQL...")
        connection = mysql.connector.connect(**db_config)
        print("✓ Connected successfully!")
        
        cursor = connection.cursor(dictionary=True)
        
        # Test query - search for Salisbury, MA
        print("Testing query: SELECT city, state_code FROM geo_cities WHERE city LIKE '%salisbury%' AND state_code = 'MA'")
        
        cursor.execute("""
            SELECT city, state_code, latitude, longitude 
            FROM geo_cities 
            WHERE city LIKE %s AND state_code = %s 
            LIMIT 5
        """, ('%salisbury%', 'MA'))
        
        results = cursor.fetchall()
        
        if results:
            print(f"✓ Query successful! Found {len(results)} results:")
            for result in results:
                print(f"  {result['city']}, {result['state_code']} ({result['latitude']}, {result['longitude']})")
        else:
            print("✓ Query successful but no results found")
        
        # Test another query - search for PA
        print("\nTesting query: SELECT city, state_code FROM geo_cities WHERE state_code = 'PA' LIMIT 3")
        
        cursor.execute("""
            SELECT city, state_code, latitude, longitude 
            FROM geo_cities 
            WHERE state_code = %s 
            LIMIT 3
        """, ('PA',))
        
        results = cursor.fetchall()
        
        if results:
            print(f"✓ Query successful! Found {len(results)} PA cities:")
            for result in results:
                print(f"  {result['city']}, {result['state_code']}")
        
        cursor.close()
        connection.close()
        print("\n✓ All tests passed! Database connection is working correctly.")
        
    except mysql.connector.Error as e:
        print(f"✗ MySQL Error: {e}")
        sys.exit(1)
    except Exception as e:
        print(f"✗ Unexpected error: {e}")
        sys.exit(1)

if __name__ == '__main__':
    test_connection()