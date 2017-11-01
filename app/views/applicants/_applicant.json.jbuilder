json.extract! applicant, :id, :first_name, :created_at, :updated_at
json.url applicant_url(applicant, format: :json)
