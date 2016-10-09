<html>
    <body>
        <h1>Bookstore</h1>
        <ul>
            {
            for $x in doc("books.xml")/book_store/book
            where $x/price < 1.0
            return <li><a>name</a>: {$x/name} <b>price</b>: {$x/price}</li>
            }
        </ul>
    </body>
</html>
