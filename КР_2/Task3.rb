require 'thread'


$array = [0,1,2,3,4,5,6,7,8,9,10]
$tmp = 0
def fun
  mutex = Mutex.new
  while $tmp<10
    th1 = Thread.new{mutex.lock; print "TH1 "; puts $array[$tmp]; $tmp+=1; mutex.unlock}
    th2 = Thread.new{mutex.lock; print "TH2 "; puts $array[$tmp]; $tmp+=1; mutex.unlock}
    th1.join
    th2.join
  end
end

fun



