class LibrairyBook < ApplicationRecord
  broadcasts_to -> (librairy_book) { 'librairy_books' }, target: :librairy_books
end
