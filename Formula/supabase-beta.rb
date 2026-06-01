class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.103.0-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.9/supabase_2.103.0-beta.9_darwin_arm64.tar.gz"
      sha256 "3133ca53cf2c492a214e804dac7890b5aef37cc26dae6fbc26837a78648c140a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.9/supabase_2.103.0-beta.9_darwin_amd64.tar.gz"
      sha256 "a7c780f291a340104275e0ee238bbeaada8729af24ff03cc7133b35996d539d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.9/supabase_2.103.0-beta.9_linux_arm64.tar.gz"
      sha256 "3c8352b8373f30e91f9771bf1b3d637b022629ade25fe372041aafeffc27dc4a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.9/supabase_2.103.0-beta.9_linux_amd64.tar.gz"
      sha256 "45310fa30563306f0e996f88f59d8ae8b7de9de26702d931728b5e2aa99def54"
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
