CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW;
END;
$$ language 'plpgsql';

CREATE TRIGGER update_at_campsite_trigger
BEFORE UPDATE ON public.campsite_reservations
FOR EACH ROW
EXECUTE PROCEDURE update_updated_at_column();