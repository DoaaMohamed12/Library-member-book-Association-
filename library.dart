class Book {
  String? title;
  String? author;
Book(this.title,this.author);

void bookInfo()
{
  print("the book title :$title \n author name :$author");
}

}
class member{
String? name,memberShipNumber;
member(this.name,this.memberShipNumber);
List<Book> borrowBook=[];

void BorrowBook(Book book)
{
  borrowBook.add(book);
}

void returnBook(Book book)
{
  borrowBook.remove(book);
}

void printMemberInfo() {
  print('Name: $name');
  print('Membership Number: $memberShipNumber');
  
  print('Borrowed Books:');
  for (var book in borrowBook) {
    print('- ${book.title}'); // طباعة كل كتاب مع علامة
  }
}

}



void main()
{
  Book b1=Book("daily doaa",'doaa' );
  Book b2=Book('oop dart','ritchard warterson');
  member m1=member('ziad','M001');

  b1.bookInfo();
  b2.bookInfo();
  m1.BorrowBook(b1);
m1.printMemberInfo();
}