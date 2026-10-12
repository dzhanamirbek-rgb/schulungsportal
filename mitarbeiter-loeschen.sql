-- In Supabase einfügen: SQL Editor > New query > einfügen > Run
create or replace function public.admin_delete_user(p_user uuid) returns void
language plpgsql security definer set search_path to '' as $$
declare t public.profiles;
begin
  if not public.is_admin() then raise exception 'Keine Berechtigung'; end if;
  if p_user = auth.uid() then raise exception 'Du kannst dich nicht selbst löschen'; end if;
  select * into t from public.profiles where id = p_user;
  if not found then raise exception 'Person nicht gefunden'; end if;
  if t.role = 'admin' then raise exception 'Admins können nicht gelöscht werden. Bitte zuerst die Admin-Rechte entfernen.'; end if;
  delete from auth.users where id = p_user;
end $$;
revoke execute on function public.admin_delete_user(uuid) from public, anon;
grant execute on function public.admin_delete_user(uuid) to authenticated;
