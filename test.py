import sys


if __name__ == '__main__':
    if len(sys.argv) < 2:
        print 'error'
    else: 
        i = 1
        for arg in  sys.argv[1:]:
            print 'argv[%d] = %s\n' % (i , arg) 
            i += 1
