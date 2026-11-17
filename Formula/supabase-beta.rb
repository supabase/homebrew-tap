class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.3.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.3/supabase_3.3.0-beta.3_darwin_arm64.tar.gz"
      sha256 "f9c4a66b4a3d0eda3ee6668f8632a95e3b8d87461ca4cfa8aab95260ab333952"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.3/supabase_3.3.0-beta.3_darwin_amd64.tar.gz"
      sha256 "69e5cc146149a5b768ade68f9c864a947ad2c30687fb50dfd061fe31a2134855"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.3/supabase_3.3.0-beta.3_linux_arm64.tar.gz"
      sha256 "ad076c78b3244836ca4bed919bec2e5a076ee1e0bbc5cd81f42040048108c1f3"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.3/supabase_3.3.0-beta.3_linux_amd64.tar.gz"
      sha256 "0bb1bbb5ff5988d6ca5163ee667bf55972779b06b8923f4c00fccbe4ec8deafe"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
