import RxSwift

//example(of: "creating observables") {
//	let mostPopuler: Observable<String> = Observable<String>.just(episodeV)
//	let originalTrilogy = Observable.of(episodeIV, episodeV, episodeVI)
//	let prequelTrilogy = Observable.of([episodeI, episodeII, episodeIII])
//	let sequelTrilogy = Observable.from([episodeVII, episodeVIII, episodeIX])
//}


example(of: "subscribe") {
	let observable = Observable.of(episodeIV, episodeV, episodeVI)
	
	observable.subscribe(onNext: { element in
		print(element)
	})
}


example(of: "empty") {
	let observable = Observable<Void>.empty()
	observable
		.subscribe(onNext: { element in
			print(element)
		}, onCompleted: {
			print("completed")
		})
}

example(of: "never") {
	let observable = Observable<Any>.never()
	observable
		.subscribe(onNext: { element in
			print(element)
		},onCompleted: {
			print("Completed")
		})
}

example(of: "dispose") {
	let mostPopular = Observable.of(episodeV, episodeIV, episodeVI)
	let subscription = mostPopular.subscribe { event in
		print(event)
	}
	subscription.dispose()
}

example(of: "DisposeBag") {
	let disposeBag = DisposeBag()
	Observable.of(episodeVII, episodeI, rogueOne)
		.subscribe {
			print($0)
		}
		.disposed(by: disposeBag)
}
