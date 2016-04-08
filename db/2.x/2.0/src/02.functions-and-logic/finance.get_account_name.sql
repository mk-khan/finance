﻿DROP FUNCTION IF EXISTS finance.get_account_name_by_account_id(bigint);

CREATE FUNCTION finance.get_account_name_by_account_id(_account_id bigint)
RETURNS text
STABLE
AS
$$
BEGIN
    RETURN account_name
    FROM finance.accounts
    WHERE account_id=$1;
END
$$
LANGUAGE plpgsql;
