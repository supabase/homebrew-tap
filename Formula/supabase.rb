class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0/supabase_2.110.0_darwin_arm64.tar.gz"
      sha256 "1c3403305292685090b51dd3c8226cd27b4ee6157688a151715fe74c454ca633"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0/supabase_2.110.0_darwin_amd64.tar.gz"
      sha256 "d33e5cda9a13b0ee361a3e9d82412d23edc48ac7c059ede8ddc3899cc7537dd4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0/supabase_2.110.0_linux_arm64.tar.gz"
      sha256 "e8a5e00d927025f1f29a47303e6cf05659d20d5b74e5d750cc8a5ade857042af"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0/supabase_2.110.0_linux_amd64.tar.gz"
      sha256 "876f439e85d296bf095d906ca91cadeb5509d753b4d98ee823e5752d578ff92b"
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
