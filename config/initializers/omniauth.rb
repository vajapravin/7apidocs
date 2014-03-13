Rails.application.config.middleware.use OmniAuth::Builder do
	provider :bitbucket, ENV['APIDOCS_BITBUCKET_KEY'], ENV['APIDOCS_BITBUCKET_SECRET']
	provider :github, ENV['APIDOCS_GITHUB_KEY'], ENV['APIDOCS_GITHUB_SECRET']#, scope: "user,repo,gist"
end
