library(credentials)

# credential kirjaston avulla koneen ssh pub key riittää Azurelle
# kunhan avain on lisätty SSH Keys - Create an SSH Key

credentials::set_github_pat()
git_credential_ask('https://github.com')
credentials::credential_helper_get()

ssh_key_info()

