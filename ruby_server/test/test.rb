require "erb"
template = File.read "form.erb"
template = ERB.new template
def save_form(form)
	file_name = "form.html"
	File.open("form.html", "w") { |file| file.puts form }
end
name = "moop"
age = "20"
form = template.result(binding)
save_form(form)