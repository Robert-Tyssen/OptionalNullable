class OptionalNullable<T> {
  final T? valueOrNull;

  const OptionalNullable({required this.valueOrNull});

  bool get isNull => valueOrNull == null;
  bool get isNotNull => !isNull;
}
