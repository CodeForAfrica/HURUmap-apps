from django import forms

Grade_Options = [('A', 'A'), ('B', 'B'), ('C', 'C'), ('D', 'D'), ('E', 'E'), ('F', 'F'), ('S', 'S')]
Subject_Options = [('Accountacy','Accountancy'),('Advance Mathematics', 'Advance Mathematics'),('Agriculture','Agriculture'), ('Arabic Language','Arabic Language'),
('Biology', 'Biology'), ('Chemistry', 'Chemistry'), ('Commerce', 'Commerce'),('Computer Science', 'Computer Science'), ('Economics','Economics'), ('English Language','English Language'),
('French Language', 'French Language'), ('Food and Human Nutrition','Food & Human Nutrition'), ('Geography','Geography'), ('History','History'), ('Kiswahili','Kiswahili'),('Physics','Physics'),]

Major_Options = [
("None","None"),("Archaeology","Archaeology"),("Architecture","Architecture"),("Agriculture","Agriculture"),("Agribusiness", "Agribusiness"),("Political Science", "Political Science" ),("Telecommucation", "Telecommucation"),("Engineering", "Engineering"),
("Sociology", "Sociology"), ("Natural Resources", "Natural Resources"), ("Science", "Science"), ("Education", "Education"), ("Science Education", "Science Education"),
("Medicine", "Medicine"), ("Information Technology", "Information Technology"), ("Business Administration", "Business Administration"), ("Procurement", "Procurement"),
("Agritechnology", "Agritechnology"), ("Computer Science", "Computer science"), ("Information and Records Management", "Information and Records Managemnt"),
("Finance", "Finance"),("Anthropology","Anthropology"), ("Accountancy","Accountancy"), ("Nursing", "Nursung"), ("Nursing Education", "Nursing Education"),("Mental Health","Mental Health"), ("Health Studies", "Health Studies"),
("Religious Studies", "Religious Studies"), ("Religious Education", "Religious Education"), ("Law","Law"), ("Philosophy", "Philosophy"), ("Botanical Science","Botanical Science"), ("Theology","Theology"),
("Psychology","Psychology"), ("Counselling", "Counselling"), ("Health Systems Management", "Health Systems Management"), ("Commerce","Commerce"), ("Divinity","Divinity"), ("Tourism","Tourism"), ("Child Education", "Child Education"),
("Business Studies","Business Studies"),("Mathematics", "Mathematics"), ("Banking","Banking"), ("Biology", "Biology"), ("Kiswahili", "Kiswahili"), ("Community Education","Community Education"), ("Microbiology", "Microbiology"),
("Taxation","Taxation"), ("Zoology","Zoology"), ("Family","Family"), ("Physics", "Physics"), ("Chemistry", "Chemistry"), ("Physiotherapy","Physiotherapy"), ("Social Work", "Social Work"), ("Interior Design","Interior Design"),
("House Planning","House Planning"), ("Food Technology","Food Technology"), ("Regional Development Planning","Regional Development Planning"), ("Public Relations","Public Relations"), ("Petroleum Geology","Petroleum Geology"),
("Social Protection","Social Protection"), ("Irrigation","Irrigation"), ("Economics","Economics"), ("Environment Studies","Environment Studies"), ("Library Information Studies","Library Information Studies"),("Arts", "Arts"),
("Statistics", "Statistics"), ("Computer Engineering","Computer Engineering"), ("Information Systems","Information Systems"), ("Geology","Geology"), ("History", "History"), ("Human Resources","Human Resources"), ("Actuarial Science","Actuarial Science"),
("Music", "Music"),("Nutrition","Nutrition"),("African Studies","African Studies"), ("Multimedia Technology","Multimedia Technology"),("Marketing","Marketing"), ("Filming","Filming"), ("Mass Communication","Mass Communication"),
("Surveying","Surveying"),("Journalism","Journalism"),("Clinical Chemistry","Clinical Chemistry"),("Range Management","Range Management"),("Shariah", "Shariah"), ("Islamic studies","Islamic Studies"),("Law Enforcement","Law Enforcement"),
("Development Studies","Development Studies"),("Building Economics","Building Economics"),("Information Security","Information Security"),("International Relation","International Relation"), ("Designer","Designer"), ("Information Management","Information Management"),
("Conflict Resolution","Conflict Resolution"), ("International Business","International Business"),("Geomatics","Geomatics"),("Biotechnology","Biotechnology"),("Pharmacy","Pharmacy"),("Molecular Biology","Molecular Biology"),
("Physical Education","Physical Education"),("Agronomy","Agronomy"),("Public Administration","Public Administration"),("Property Management","Property Management"),("Urban and Regional Planning","Urban and Regional Planning"),("Laboratory sciences","Laboratory sciences"),
("Local Government Management","Local Government Management"),("Energy Resources","Energy Resources"), ("Real Estate","Real Estate"),("Wildlife","Wildlife"),("Language","Language"),("Textile Design","Textile Design"),("Aquatic Science","Aquatic Science"),("Electronic Science","Electronic Science"),
("Land Management","Land Management"),("Production and Operation Management","Production and Operation Management"),("Informatics","Informatics"),("Literature","Literature"),("Psychology Education","Psychology Education"),("Geoinformatics","Geoinformatics"),
("Public Relations","Public Relations"),("Forestry","Forestry"),("Data Management","Data Management"),("Medical Technology","Medical Technology")]





class InputForm(forms.Form):
    grades = forms.CharField(label='gender', widget=forms.Select(choices=Grade_Options, attrs={'class': 'form-control', 'id': 'sub-grade'}), required=False)
    subjects = forms.CharField(label='gender', widget=forms.Select(choices=Subject_Options, attrs={'class': 'form-control', 'id': 'sub-name'}), required=False)
    majors = forms.CharField(label='gender', widget=forms.Select(choices=Major_Options, attrs={'class': 'form-control', 'id': 'course-name'}), required=False)
