from collections import OrderedDict


def sort_keys(key_order, d):
    print "\n\n\n\n\n\n\n\n\n\n\n\n"
    print d.items()
    print "\n\n\n\n\n\n\n\n\n\n\n\n"
    try:
        return OrderedDict(sorted(d.items(), key=lambda i: key_order.index(i[0])))
    except ValueError:
        print "\n\n\n\n\n\n\n\n\n\n\n\n"
        print d.items()
        print "\n\n\n\n\n\n\n\n\n\n\n\n"
        return d
