class bookStore {
  int id;
  String? title;
  String? publisher;
  String? author;
  String? category;
  int price;

  bookStore(
      {this.id = 0,
      this.title,
      this.publisher,
      this.author,
      this.category,
      this.price = 0}
      );
}

void main() {
  var bookList = [
    bookStore(
        id: 001,
        title: 'The Lord of the Rings',
        publisher: 'Allen & Unwin',
        author: 'J. R. R. Tolkien',
        category: 'Fantasy',
        price: 650000),
    bookStore(
        id: 002,
        title: 'The Hobbit',
        publisher: 'Allen & Unwin',
        author: 'J. R. R. Tolkien',
        category: 'Fantasy',
        price: 200000),
    bookStore(
        id: 003,
        title: 'The Alchemist',
        publisher: 'HarperCollins',
        author: 'Paulo Coelho',
        category: 'Fiction',
        price: 100000),
  ];

  print('> Tampilan seluruh buku yang ada di dalam list :');
  for (var i = 0; i < bookList.length; i++) {
    print('Book ID: \t${bookList[i].id}');
    print('Book Title: \t${bookList[i].title}');
    print('Book Publisher: ${bookList[i].publisher}');
    print('Book Author: \t${bookList[i].author}');
    print('Book Category: \t${bookList[i].category}');
    print('Book Price: \t${bookList[i].price}');
    print('');
  }

  // Menambahkan buku ke dalam list
  bookList.add(bookStore(
      id: 004,
      title: 'The Da Vinci Code',
      publisher: 'Doubleday',
      author: 'Dan Brown',
      category: 'Thriller',
      price: 200000));

  // Menghapus buku dari dalam list
  bookList.removeAt(0);
}
