class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.114.0-beta.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.12/supabase_2.114.0-beta.12_darwin_arm64.tar.gz"
      sha256 "fbd344a6c704d8559f6a13ad35e448610103f60b37523bf00a4f9f5fea83f836"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.12/supabase_2.114.0-beta.12_darwin_amd64.tar.gz"
      sha256 "44a2cad7431b142401ff0794503f984f03108624aad85e15617d768ee8b4882e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.12/supabase_2.114.0-beta.12_linux_arm64.tar.gz"
      sha256 "0f0d7055649182227c2117a09df4ae3359f23e30f3dd25ce0d13e7c2d28a2956"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.12/supabase_2.114.0-beta.12_linux_amd64.tar.gz"
      sha256 "c3ccf97fb80984c7f0f384b9a48a1beffcfc1b63c95ef48b19d32afbd0da142a"
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
