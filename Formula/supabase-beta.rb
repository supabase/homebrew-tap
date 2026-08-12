class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.114.0-beta.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.11/supabase_2.114.0-beta.11_darwin_arm64.tar.gz"
      sha256 "abdaf6022a450413dd47330715b6089345652d883b66b1e3c09dd79ce889919e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.11/supabase_2.114.0-beta.11_darwin_amd64.tar.gz"
      sha256 "dcfac645d9bdae366019a1c940b84217d42e17079c2d646181b2e4568765a2eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.11/supabase_2.114.0-beta.11_linux_arm64.tar.gz"
      sha256 "b3c0e813bf5f685bd952a03c73e39d31ccaed9431069dcf354114da7ad424b13"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.11/supabase_2.114.0-beta.11_linux_amd64.tar.gz"
      sha256 "657db13618e1d3aa0c4e54c0458dcc3815ae73b8b9828849328d94529ec9ac1f"
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
