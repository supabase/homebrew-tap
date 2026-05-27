class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.102.0-beta.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.11/supabase_2.102.0-beta.11_darwin_arm64.tar.gz"
      sha256 "fc60aefb3d8f6c268b19895562718d57b5036d8bda8920fb4bac0812f41a891f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.11/supabase_2.102.0-beta.11_darwin_amd64.tar.gz"
      sha256 "624c4c396e87880190e8ad2e0c07fe032d2e935b3064d4bc8f93f8c2831d3cf2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.11/supabase_2.102.0-beta.11_linux_arm64.tar.gz"
      sha256 "51d3df944b44683e84b21e36c69eef8087039ce0985ecba2a8c40fa40fc4a204"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.11/supabase_2.102.0-beta.11_linux_amd64.tar.gz"
      sha256 "071155986c31cebc6275341977989be9bc1655a23b49ea9325085898990b6d4d"
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
