require 'library'

describe Library do

  before(:each) do
    @library = Library.new
  end

  it 'can return a list of all books' do
    expected_books = [
      {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'},
      {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},
      {title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'},
      {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'},
    ]
    expect(@library.books).to eq expected_books
  end

  it 'can add a new book' do
    book = {title: 'Making a Maker', author: 'Makers Academy', subject: 'Ruby'}
    @library.add_book(book)
    expect(@library.books).to include(book)
  end

  it 'can find a specific book' do
    book = {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'}
    expect(@library.find_book('POODR')).to match(book)
  end

  it 'can delete a book' do
    book = {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'}
    @library.remove_book('POODR')
    expect(@library.books).not_to include(book)
  end

  it 'can return a list of all books by subject' do
    expect(@library.all_books_by_subject('Ruby')).to eq ([{:author=>"Zed Shaw", :subject=>"Ruby", :title=>"Learn Ruby The Hard Way"}, {:author=>"Sandi Metz", :subject=>"Ruby", :title=>"The Well Grounded Rubyist"}])
  end
end
