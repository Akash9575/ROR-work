 Book 
    belongs_to :author
    has_many :reviews

 Author 
    has_many :books


Review 
    belongs_to :book



    create_table "authors", force: :cascade do |t|
        t.string "name"
        t.datetime "created_at", null: false
        t.datetime "updated_at", null: false
      end
    
      create_table "books", force: :cascade do |t|
        t.integer "author_id"
        t.string "book"
        t.string "sold_quantity"
        t.string "name"
        t.boolean "publushed"
        t.datetime "created_at", null: false
        t.datetime "updated_at", null: false
      end
    
      create_table "reviews", force: :cascade do |t|
        t.integer "rating"
        t.integer "user_id"
        t.text "description"
        t.integer "book_id"
        t.datetime "created_at", null: false
        t.datetime "updated_at", null: false
      end

# Query

# Q1 Write a query that will return all authors with the count of all their books
# Author.joins(:books).group("authors.name").count("books.author_id")





# Q2 Q2 Write a query to get the count of authors who have published at least one book.
# Author.joins(:books).where(books: { publushed: true }).count


# Q3 Write a query to retrieve authors whose book sold more than 20 times.
# Author.joins(:books).select("authors.name").where("books.sold_quantity>20")


# Q4
# Author.joins(books: :reviews).where("reviews.rating>3.5")

# Q5 Write a query to get top 10 sold books
    # Book.order(sold_quantity: :desc ).limit(10)
   

# Q6 Write a query to get top 20 sold books in last month
#  Book.order(sold_quantity: :desc).where(created_at:(Time.now-1.month)..Time.now).limit(20)

#Q7 Write a query to get top 10 sold books in last week
# Book.order(sold_quantity: :desc).where(created_at:(Time.now-1.week)..Time.now).limit(10)

 
# Q8 Write a query to get top 10 sold books in last day
# Book.order(sold_quantity: :desc).where(created_at:(Time.now-1.day)..Time.now).limit(10)

#Q9 Write a query to get the books which reviews contains a "nice"
# Book.joins(:reviews).where("reviews.description like ?", "%nice%")


# Q10 Note down difference between joins and includes
# joins generate an INNER JOIN database query. Which can be used to query the records with conditions on the joined table. joins 
# does not eager load associated records.

# includes use-case, on the other hand, is to eager load associated records and avoid N+1 queries. 


# Q11 Try different types of joins:

# INNER JOIN: T
#             he INNER JOIN keyword selects all rows from both the tables as long as the condition satisfies. This keyword will create the result-set by 
#             combining all rows from both the tables where the condition satisfies .

# LEFT JOIN: This join returns all the rows of the table on 
#           the left side of the join and matching rows for the table on the right side of join. 
#             LEFT JOIN is also known as LEFT OUTER JOIN.