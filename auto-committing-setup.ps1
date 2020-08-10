$GitHubUsername = Read-Host "Please enter your github username"

$CommitMessage = "auto committed from auto-committing-setup.ps1!"

$PracticeRepoDir = Read-Host "Please enter your practice directory"

git clone "https://github.com/$GitHubUsername/powershell-practice.git" "$PracticeRepoDir"

Copy-Item "$PSCommandPath" "$PracticeRepoDir\auto-committing-setup.ps1"

Set-Location "$PracticeRepoDir"

git add .

git commit -m "$CommitMessage"

git push