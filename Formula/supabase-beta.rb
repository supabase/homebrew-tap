class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.114.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.2/supabase_2.114.0-beta.2_darwin_arm64.tar.gz"
      sha256 "467bb3230a62e771f372eb823754eb3c7c7d02b4d38fd47ed5e0bb0604a16d16"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.2/supabase_2.114.0-beta.2_darwin_amd64.tar.gz"
      sha256 "c01198cf0312d467a70572b39abf058f49cf280ea51106a758bfcc35021859c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.2/supabase_2.114.0-beta.2_linux_arm64.tar.gz"
      sha256 "d9d6ac86191bb8d56670a63e47279092ecf940d8870ac41a955b6de57aadfaea"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.2/supabase_2.114.0-beta.2_linux_amd64.tar.gz"
      sha256 "b065c19797417febf85267b8541428164f5385cfe94b693f0969050cc4949c11"
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
