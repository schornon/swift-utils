struct ExecutionTimer {
    static func seconds(_ closure: ()->Void) {
        let start = DispatchTime.now()
        closure()
        let end = DispatchTime.now()
        
        let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds // <<<<< Difference in nano seconds (UInt64)
        let timeInterval = Double(nanoTime) / 1_000_000_000
        print("\(timeInterval) seconds")
    }
}