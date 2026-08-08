class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.113.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.113.0/supabase_2.113.0_darwin_arm64.tar.gz"
      sha256 "ce047859782b15a90188af233ed60f6e2d28488361f750d3c9f1fd2470c7cb96"
    else
      url "https://github.com/supabase/cli/releases/download/v2.113.0/supabase_2.113.0_darwin_amd64.tar.gz"
      sha256 "d04afab42cf3a4bc174c803ff076b7dfe1fba77fa4289089443269d7d8aa3132"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.113.0/supabase_2.113.0_linux_arm64.tar.gz"
      sha256 "e2697de24a58a10820cd631dd78ae1e1ef2fe5f6625f4447ca65624dbe86072e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.113.0/supabase_2.113.0_linux_amd64.tar.gz"
      sha256 "14659e7148ad17b77e69e5c36b27be572110519c76c796da1b53c07c3590f593"
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
