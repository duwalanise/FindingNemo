json.array!(@children) do |child|
  json.extract! child, :id, :name, :birth_date, :gender, :language, :father_name, :father_phone, :mother_name, :mother_phone, :voter_id, :address, :dist_character, :disability_status, :photo, :finger_print, :issue_date, :issuer
  json.url child_url(child, format: :json)
end
