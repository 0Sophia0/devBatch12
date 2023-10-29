Candidates.companyName = 'Soft Innovas';

Candidates c1 = new Candidates();
Candidates.countCandidates++;
c1.name='Jane';
c1.gender='Female';
c1.printCandidateInfo();

Candidates c2 = new Candidates();
Candidates.countCandidates++;
c2.name='Jerru';
c2.gender='Male';
c2.printCandidateInfo();

Candidates c3 = new Candidates();
Candidates.countCandidates++;
c3.name='Jaquelene';
c3.gender='Female';
c3.printCandidateInfo();

system.debug('Number of candidates : '+Candidates.countCandidates);