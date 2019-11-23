CREATE TABLE public.campsite_reservations
(
  id           INT PRIMARY KEY NOT NULL,
  reserved_by  VARCHAR(255) NOT NULL,
  phone        VARCHAR(15) NOT NULL,
  email        VARCHAR(255) NOT NULL,
  status       VARCHAR(10) CHECK (status IN ('ACTIVE', 'CANCELLED')) NOT NULL DEFAULT 'CASH_OUT',
  starts_at    TIMESTAMP NOT NULL,
  ends_at      TIMESTAMP NOT NULL,
  created_at   TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at   TIMESTAMP NOT NULL DEFAULT NOW()
);