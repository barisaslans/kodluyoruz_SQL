-- Soru 1 / İsminde en az 4 adet e veya E bulunan kaç film vardır?

SELECT COUNT(*) FROM film
WHERE title ILIKE '%e%e%e%e%';



-- Soru 2 / Kategori isimlerini ve kategori başına düşen film sayılarını çıktı veren sorguyu yazınız:

SELECT category.name, COUNT(*) FROM category
INNER JOIN film_category ON film_category.category_id = category.category_id
INNER JOIN film ON film.film_id = film_category.film_id
GROUP BY category.name; 



-- Soru 3 / En çok film bulunan rating kategorisi hangisidir?

SELECT rating, COUNT(*) FROM film
GROUP BY rating
ORDER BY COUNT(*) DESC
LIMIT 1; 



-- Soru 4 / Film tablosunda 'K' karakteri ile başlayan en uzun ve replacement_cost'u en az olan 3 filmi sıralayınız:

SELECT title, length, replacement_cost FROM film
WHERE title LIKE ('K%')
ORDER BY length DESC, length DESC, replacement_cost ASC
LIMIT 3;



-- Soru 5 / En çok alışveriş yapan müşterinin adı nedir?

SELECT SUM(amount), customer.first_name, customer.last_name FROM payment
JOIN customer ON customer.customer_id = payment.customer_id
GROUP BY payment.customer_id, customer.first_name, customer.last_name
ORDER BY SUM(amount) DESC
LIMIT 1;