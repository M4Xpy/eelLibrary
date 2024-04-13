from main import (
    create_book,
    delete_book,
    get_books,
)


class TestMain:
    def test_create_book(self) -> None:
        """ Test creating a book. """
        for letter in "test":
            assert create_book(title=letter, description=f"{letter}{letter}",
                               ) == "Книга успішно створена!"

    def test_get_books(self) -> None:
        """ Test retrieving books. """
        for letter, book in zip("test", get_books()):
            _, title, description = book
            assert title, description == (letter, f"{letter}{letter}")

    def test_delete_book(self) -> None:
        """ Test deleting a book. """
        for book in get_books():
            assert delete_book(book_id=book[0]) == "Книга успішно видалена!"

    def test_get_empty_books(self) -> None:
        """ Test retrieving books when the database is empty. """
        assert get_books() == []
