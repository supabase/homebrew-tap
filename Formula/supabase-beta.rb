class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.7/supabase_2.109.0-beta.7_darwin_arm64.tar.gz"
      sha256 "c43f608a7c0145c087d3af4d3417db4d93d5ab06eaafecc6a7058d55e947a62c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.7/supabase_2.109.0-beta.7_darwin_amd64.tar.gz"
      sha256 "9e1b9f4df3ba0a63354888530b96981ce643f821da68dec1fb71fcf9f4e74b28"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.7/supabase_2.109.0-beta.7_linux_arm64.tar.gz"
      sha256 "460197530b19d8d713c249346f887c17fcafdf624a899659218ca04c8fe9e8b3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.7/supabase_2.109.0-beta.7_linux_amd64.tar.gz"
      sha256 "3fb11dc4504b1022a2a79086858531fe718e51266e70489e4ca92ab37906a849"
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
