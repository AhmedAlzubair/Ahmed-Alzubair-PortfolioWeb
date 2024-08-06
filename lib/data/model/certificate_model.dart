class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'English Diploma',
    organization: 'Yemen Tech Institute',
    date: 'Feb 2018',
    skills:'Writing,Reading,Listening and speaking',
    credential:  '',
  ),
  CertificateModel(
    name: 'Secretary Diploma',
    organization: 'Yemen Tech Institute',
    date: 'Feb 2018',
    skills: 'Windows.Arabic typing,Microsoft Word,PowerPoint,Proso,Internet,Microsoft Excel,English typing.',
    credential:  '',
  ),
  CertificateModel(
    name: 'International Computer Driving Licence ICDL Base',
    organization: 'EDRAAK.',
    date: 'JAN 2024',
    skills: 'Computer Essentials ,Word Processing,Excel Spreadsheets,Internet & Email Essentials.',
    credential:  '',
  ),
  CertificateModel(
    name: 'Project Management Foundation',
    organization: 'EDRAAK',
    date: 'JUL 2024',
    skills: 'Introducing basic project management skills and tools, anc now to start a project management journey within companies or individually',
    credential:  '',
  ),










];
