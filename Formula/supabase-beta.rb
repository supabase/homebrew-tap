class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0-beta.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.10/supabase_2.115.0-beta.10_darwin_arm64.tar.gz"
      sha256 "74f3049ec4771f221f3072ad7ff5077bba811178cb8f68bc7263c6fd3e9458df"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.10/supabase_2.115.0-beta.10_darwin_amd64.tar.gz"
      sha256 "4a9da35dd75e195ddfa266366cf271165d5a3c57cff9e96ac7183b437b62106e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.10/supabase_2.115.0-beta.10_linux_arm64.tar.gz"
      sha256 "e478cb01eb0ab806404f267fc757f8e2877132481794aec591fe7d55bdd13791"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.10/supabase_2.115.0-beta.10_linux_amd64.tar.gz"
      sha256 "c65ac118b4fba9858be10ba073928e7e839d060b8fc40a07c0633f65658bb221"
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
