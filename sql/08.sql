/*
 * Use a JOIN to display the first and last names, as well as the address, of each staff member.
 * Use the tables staff and address.
 * Order by last name.
 */
select first_name, last_name, address as street_address from
staff
--join address on (staff.address_id=address.address_id) order by last_name;
join address using (address_id) order by last_name;
