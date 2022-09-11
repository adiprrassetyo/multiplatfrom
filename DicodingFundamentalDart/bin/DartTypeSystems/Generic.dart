abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

// Type Interface
Map<String, dynamic> company = {'name': 'Dicoding', 'yearsFounded': 2015};
// var company = {'name': 'Dicoding', 'yearsFounded': 2015}; // Map<String, Object>