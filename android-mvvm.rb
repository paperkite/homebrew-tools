class AndroidMvvm < Formula
  desc "Android MVVM Templates to create activities and required classes to use MVVM and"
  homepage "https://github.com/paperkite/android-mvvm"
  url "https://github.com/paperkite/android-mvvm/archive/0.0.2.tar.gz"
  version "0.0.2"
  sha256 "fc019402df47031d70c9d343ee55c68005bef2eec0ab88c7a93b55b1e5a6df1b"

  def install
    prefix.install Dir["MVVMEmptyActivity"]
    locations = Dir.glob('/Applications/Android*')

    source = "#{prefix}/MVVMEmptyActivity"

	for existing in locations
		activities = "#{existing}/Contents/plugins/android/lib/templates/activities/"
		opoo "Could not create symlinks. Please run following command:\nln -s '#{source}' '#{activities}'"
		#prefix.install Dir["MVVMEmptyActivity"], activities
		#ln_sf activities, source, :force => true
		# system "echo Run #{prefix}/linkAndroidMVVM.sh to finish installation"
	end

	end

end