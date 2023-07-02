$repo_list_output = gh repo list --limit 200 --json url

$repositories = $repo_list_output | ConvertFrom-Json

$repository_urls = $repositories.url

foreach ($urls in $repository_urls) {
    Write-Host -ForegroundColor Yellow "Clonning:" $urls
    git clone $urls
    Write-Host -ForegroundColor Green "Cloned:" $urls
}
