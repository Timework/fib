def fibs(n)
    arr = []
    n.times do
        if arr.length == 0
            arr.push(0)
        elsif arr.length == 1
            arr.push(1)
        else
            arr.push(arr[-1] + arr[-2])
        end
    end
    return arr
end

def fibs_rec(n, arr=[])
    if arr.length < 2 then arr.push(arr.length) else arr.push(arr[-1] + arr[-2]) end
        n -= 1
        if n == 0 then return arr else fibs_rec(n, arr) end
end
puts fibs_rec(15)