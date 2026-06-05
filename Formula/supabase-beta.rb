class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.1/supabase_2.106.0-beta.1_darwin_arm64.tar.gz"
      sha256 "fc232654878fa342c1d3976c36c929be35c086ec7386286eb0788a20e964669d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.1/supabase_2.106.0-beta.1_darwin_amd64.tar.gz"
      sha256 "c2bc593eaa2ddd72fe34719ad11174d7b55b5b2b2288d3c2ed39aa77eee5db32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.1/supabase_2.106.0-beta.1_linux_arm64.tar.gz"
      sha256 "b2a3cac17914094b6a5610fa3ee09ad044a89a3f67db13601fc8162b6f817e29"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.1/supabase_2.106.0-beta.1_linux_amd64.tar.gz"
      sha256 "8c3794cd1d6579f1aeaf253dd7eec881872f06aa9f596767871046e7b9110d67"
    end
  end

  def install
    bin.install "supabase"
    bin.install "supabase-go" if File.exist?("supabase-go")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
