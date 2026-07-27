class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.40"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.40/supabase_2.110.0-beta.40_darwin_arm64.tar.gz"
      sha256 "1e950252ecd16515044e1d939c92eea1fdb59a7987509d6f06796599e349c7c1"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.40/supabase_2.110.0-beta.40_darwin_amd64.tar.gz"
      sha256 "016516a5f32a89ec220fbb1304d9f6bde9d97c4e000a315c1337d950752994d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.40/supabase_2.110.0-beta.40_linux_arm64.tar.gz"
      sha256 "35231f9cffb564345691f3edb5cc14c460a2d842c83036da5dbe03c2bb1b2a31"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.40/supabase_2.110.0-beta.40_linux_amd64.tar.gz"
      sha256 "cb45b784b4442de607048d7f08ab2cb18b64f45d37842f4530c661cb8a884c1e"
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
