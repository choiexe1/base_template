sealed class Result<T> {
  const Result({this.data, this.errorMessage});

  final T? data;
  final String? errorMessage;
}

class Success<T> extends Result<T> {
  const Success(T data) : super(data: data);
}

class Failed<T> extends Result<T> {
  const Failed(String errorMessage) : super(errorMessage: errorMessage);
}
