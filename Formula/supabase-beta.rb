class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.114.1-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.1-beta.2/supabase_2.114.1-beta.2_darwin_arm64.tar.gz"
      sha256 "fb35b94d32c6e7ac6af4370e773552e6b6ab518cf37cb2cd48373a39a82b2b58"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.1-beta.2/supabase_2.114.1-beta.2_darwin_amd64.tar.gz"
      sha256 "a276a8ed1f25eea9a69e9b72dd475db6eaed8f8e02a4dcdde7b6d89482c1f035"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.1-beta.2/supabase_2.114.1-beta.2_linux_arm64.tar.gz"
      sha256 "8c451d9d94e7a768b76967ba21fb26dfee0c0e455590ca9c9614faefe0e8825f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.1-beta.2/supabase_2.114.1-beta.2_linux_amd64.tar.gz"
      sha256 "2995e5feec490fb1cc2a50b900d1d3921efe575f66b1d8c788c8d576a14594e6"
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
