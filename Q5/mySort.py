class Sort(object):
    def __init__(self, arr, sort1=[]):
        self.arr = arr
        self.sort1 = sort1

    def bubbleSort(self):
        sort = self.arr[0:len(self.arr)]
        n = len(sort)
        for i in range(n - 1):
            for j in range(n - i - 1):
                if sort[j] > sort[j + 1]:
                    sort[j], sort[j + 1] = sort[j + 1], sort[j]
        self.sort1 = sort
        return self.sort1

    def Index(self):
        sort = self.arr[0:len(self.arr)]
        n = len(sort)
        for i in range(n - 1):
            for j in range(n - i - 1):
                if sort[j] > sort[j + 1]:
                    sort[j], sort[j + 1] = sort[j + 1], sort[j]
        self.sort1 = sort
        index1 = []
        for i in range(n):
            for j in range(n):
                if self.sort1[i] == self.arr[j]:
                    if j+1 not in index1:
                        index1.append(j+1)
        return index1

    def Rank(self):
        sort = self.arr[0:len(self.arr)]
        n = len(sort)
        for i in range(n - 1):
            for j in range(n - i - 1):
                if sort[j] > sort[j + 1]:
                    sort[j], sort[j + 1] = sort[j + 1], sort[j]
        self.sort1 = sort
        rank1 = []
        for i in range(n):
            for j in range(n):
                if self.arr[i] == self.sort1[j]:
                    if j+1 not in rank1:
                        rank1.append(j+1)
        return rank1
