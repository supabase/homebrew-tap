class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.13/supabase_2.117.0-beta.13_darwin_arm64.tar.gz"
      sha256 "bf0d77ead55bd09712e5912ec1579d5f34a6aa01e32f4f6174bf985ddccc2e5a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.13/supabase_2.117.0-beta.13_darwin_amd64.tar.gz"
      sha256 "6bf20b74f0eec7f74d38547ae89048c511c19e3d2dbbc04f711106561f0ccf65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.13/supabase_2.117.0-beta.13_linux_arm64.tar.gz"
      sha256 "1f44df60c393643bdd79701c4df36c48fd9a1c09326980ab0993e1cfaf0929ee"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.13/supabase_2.117.0-beta.13_linux_amd64.tar.gz"
      sha256 "8d49e810c43ec3c16ba6829aa75a5255a519ecf255ec505b5fa6abbc3e6cb64d"
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
