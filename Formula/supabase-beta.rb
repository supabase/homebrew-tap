class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.1-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.1-beta.5/supabase_2.110.1-beta.5_darwin_arm64.tar.gz"
      sha256 "954bd960e441c83acffb8dcdc3a6e91cbd2472a936effee141b6eb65028c6e88"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.1-beta.5/supabase_2.110.1-beta.5_darwin_amd64.tar.gz"
      sha256 "4344ce6f680dc21a07393a65f13c9cfbbfd5a9137ce59277c99b42a312804b3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.1-beta.5/supabase_2.110.1-beta.5_linux_arm64.tar.gz"
      sha256 "ad0c420c4fa8e822587a43c0269f7719eb1e897c7b64fe8e053424855bf02f45"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.1-beta.5/supabase_2.110.1-beta.5_linux_amd64.tar.gz"
      sha256 "b3a97a526b6e92a4087b946a0643d0bc2ce052840a391bf3919ee0575b119375"
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
