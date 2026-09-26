class Book {
  String title;
  String author;

  bool _isIssued = false;

  Book(this.title, this.author);


  bool get isIssued {
    return _isIssued;
  }


  void issueBook() {
    _isIssued = true;
  }


  void returnBook() {
    _isIssued = false;
  }
}


class Person {
  String name;

  Person(this.name);
}

class Member extends Person {
  int memberId;

  Member(String name, this.memberId) : super(name);
}

class Library {
  List<Book> books = [];
  List<Member> members = [];

  void addBook(Book book) {
    books.add(book);
  }

  void addMember(Member member) {
    members.add(member);
  }

  void issueBook(Book book, Member member) {
    if (!book.isIssued) {
      book.issueBook();

      print("${book.title} issued to ${member.name}.");
    } else {
      print("${book.title} is already issued.");
    }
  }

  void returnBook(Book book) {
    if (book.isIssued) {
      book.returnBook();

      print("${book.title} returned successfully.");
    } else {
      print("${book.title} was not issued.");
    }
  }
}

void main() {
  Library library = Library();

  Book book1 = Book("Dart Programming", "John Smith");
  Book book2 = Book("OOP Concepts", "David");

  Member member = Member("Sreejoye", 101);

  library.addBook(book1);
  library.addBook(book2);
  library.addMember(member);

  library.issueBook(book1, member);

  print("Book Issued: ${book1.isIssued}");

  print("----------------------");

  library.issueBook(book1, member);

  print("----------------------");

  library.returnBook(book1);

  print("Book Issued: ${book1.isIssued}");
}