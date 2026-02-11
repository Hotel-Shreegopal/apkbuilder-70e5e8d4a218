class Note {
  final String title;
  final String content;
  final String? id;

  Note({
    this.id,
    required this.title,
    required this.content,
  });

  factory Note.fromMap(Map<String, dynamic> map, {String? id}) {
    return Note(
      id: id ?? map['id'] as String?,
      title: map['title'] as String,
      content: map['content'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'content': content,
    };
  }

  Note copyWith({
    String? id,
    String? title,
    String? content,
  }) {
    return Note(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
    );
  }

  @override
  String toString() {
    return 'Note(title: ${title}, content: ${content})';
  }
}
