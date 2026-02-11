import '../models/note.dart';

class NoteService {
  static final List<Note> _items = [];
  static int _nextId = 1;

  static Future<List<Note>> getAll() async {
    return List.from(_items);
  }

  static Future<Note?> getById(String id) async {
    try {
      return _items.firstWhere((item) => item.id == id);
    } catch (_) {
      return null;
    }
  }

  static Future<String> create(Note item) async {
    final id = (_nextId++).toString();
    _items.add(item.copyWith(id: id));
    return id;
  }

  static Future<void> update(String id, Note item) async {
    final index = _items.indexWhere((i) => i.id == id);
    if (index >= 0) _items[index] = item.copyWith(id: id);
  }

  static Future<void> delete(String id) async {
    _items.removeWhere((item) => item.id == id);
  }
}
