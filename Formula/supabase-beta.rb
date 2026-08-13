class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.1/supabase_2.115.0-beta.1_darwin_arm64.tar.gz"
      sha256 "2f9113e0394dd0d8b3d947231fba47921187b3c6e445f4e393758f888e576988"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.1/supabase_2.115.0-beta.1_darwin_amd64.tar.gz"
      sha256 "340c9519d07231b19dcf0a8d745c2ea0e728883d732cf82ac3a78c43a7b063fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.1/supabase_2.115.0-beta.1_linux_arm64.tar.gz"
      sha256 "4ec018b9200027867cadd8cd7767a7eade8b9e302301bd5b611faeeaf8959745"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.1/supabase_2.115.0-beta.1_linux_amd64.tar.gz"
      sha256 "87cf3cf0aa3f499b03769df500ba2553efe58ac9e4b130d8fbf8d01a7ac64810"
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
