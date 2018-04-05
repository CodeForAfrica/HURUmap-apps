from django import forms

Grade_Options = [('A', 'A'), ('B', 'B'), ('C', 'C'), ('D', 'D'), ('E', 'E'), ('F', 'F'), ('S', 'S')]
Subject_Options = [('Accountacy','Accountancy'),('Advance Mathematics', 'Advance Mathematics'),('Agriculture','Agriculture'), ('Arabic Language','Arabic Language'),
('Biology', 'Biology'), ('Chemistry', 'Chemistry'), ('Commerce', 'Commerce'),('Computer Science', 'Computer Science'), ('Economics','Economics'), ('English Language','English Language'),
('French Language', 'French Language'), ('Food and Human Nutrition','Food & Human Nutrition'), ('Geography','Geography'), ('History','History'), ('Kiswahili','Kiswahili'),('Physics','Physics'),]

Major_Options = [
("Political Science", "Political Science" ),("Telecommucation", "Telecommucation"),("Engineering", "Engineering"),
("Sociology", "Sociology"), ("Natural Resources", "Natural Resources"), ("Science", "Science"), ("Education", "Education"), ("Science Education", "Science Education"),
("Medicine", "Medicine"), ("Information Technology", "Information Technology"), ("Business Administration", "Business Administration"), ("Procurement", "Procurement"),
("Agritechnology", "Agritechnology"), ("Computer Science", "Computer science"), ("Information and Records Management", "Information and Records Managemnt"),
("Finance", "Finance"), ("Accountancy","Accountancy"), ("Nursing", "Nursung"), ("Nursing Education", "Nursing Education"),("Mental Health","Mental Health"), ("Health Studies", "Health Studies"),
("Religious Studies", "Religious Studies"), ("Religious Education", "Religious Education"), ("Law","Law"), ("Philosophy", "Philosophy"), ("Botanical Science","Botanical Science"), ("Theology","Theology"),
("Psychology","Psychology"), ("Counselling", "Counselling"), ("Health Systems Management", "Health Systems Management"), ("Commerce","Commerce")
]





class InputForm(forms.Form):
    grades = forms.CharField(label='gender', widget=forms.Select(choices=Grade_Options, attrs={'class': 'form-control', 'id': 'sub-grade'}), required=False)
    subjects = forms.CharField(label='gender', widget=forms.Select(choices=Subject_Options, attrs={'class': 'form-control', 'id': 'sub-name'}), required=False)
    majors = forms.CharField(label='gender', widget=forms.Select(choices=Major_Options, attrs={'class': 'form-control', 'id': 'course-name'}), required=False)
