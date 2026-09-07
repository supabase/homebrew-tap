class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.24/supabase_2.117.0-beta.24_darwin_arm64.tar.gz"
      sha256 "48f902a4821a8100db3d44dc8ffda64c53be57debf7dce2767140532d4b82f35"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.24/supabase_2.117.0-beta.24_darwin_amd64.tar.gz"
      sha256 "91820fdaa507d969eaca0d34559b02e7c3b7605b48bfe823def3b5ec1bf01f0f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.24/supabase_2.117.0-beta.24_linux_arm64.tar.gz"
      sha256 "6bf3ebc616705f43ae2e8acec52a2d5a087c2173c03302ea39134757f247849b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.24/supabase_2.117.0-beta.24_linux_amd64.tar.gz"
      sha256 "bcef348ac49b5f9a336981c0aaa4a5011965b0a03e42143fdc6634c1a7bdb0e2"
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
