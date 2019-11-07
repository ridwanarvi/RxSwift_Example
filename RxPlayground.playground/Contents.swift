import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true
import RxSwift

let disposeBag: DisposeBag = DisposeBag()
let number: Observable<[String]> = Observable<[String]>.of(["satu", "dua"], ["tiga", "empat", "lima"], ["enam"])

number.subscribe(onNext: { value in
        print(value)
    }, onError: { error in
        print(error)
    }, onCompleted: {
        print("complete")
    }, onDisposed: {
        print("disposed")
    }
).disposed(by: disposeBag)


let numberSubject: PublishSubject<String> = PublishSubject<String>()

numberSubject.subscribe(onNext: { value in
        print("subject \(value)")
    }, onError: { error in
        print(error)
    }, onCompleted: {
        print("complete subject")
    }, onDisposed: {
        print("disposed subject")
    }
).disposed(by: disposeBag)

numberSubject.onNext("satu")
print("wkwk - hihihi")
numberSubject.onNext("dua")
numberSubject.onError(NSError(domain: "error", code: 0, userInfo: nil))
numberSubject.onCompleted()
numberSubject.onNext("lima") //not observed
