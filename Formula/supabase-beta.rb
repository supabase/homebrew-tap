class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.118.0-beta.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.15/supabase_2.118.0-beta.15_darwin_arm64.tar.gz"
      sha256 "94d3a94b28a28ac375da3b58ed1b4e65a54eda0304b877cced0622844a7ff3a6"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.15/supabase_2.118.0-beta.15_darwin_amd64.tar.gz"
      sha256 "25ee2954872c5565a7ba852d7286c4d4a9cb64824b5f4ae94d0d512db5173f35"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.15/supabase_2.118.0-beta.15_linux_arm64.tar.gz"
      sha256 "d08a26477139230a809d7530281cc9f3799a4bbb887a51e1fd46ebe353385ce8"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.15/supabase_2.118.0-beta.15_linux_amd64.tar.gz"
      sha256 "b1f049815027388ee2f564df05c9b33144d1c7dfe027e47b624f13c320b6d295"
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
