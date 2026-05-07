class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.99.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.1/supabase_2.99.0-beta.1_darwin_arm64.tar.gz"
      sha256 "7338cf2633e73a9b8f1144016aebaaf608188c85f19430b054dfcad7dbf8a45f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.1/supabase_2.99.0-beta.1_darwin_amd64.tar.gz"
      sha256 "0224961f13598489e108a324820c18f6b2ca8416c973879e37080766c12b9039"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.1/supabase_2.99.0-beta.1_linux_arm64.tar.gz"
      sha256 "9ce0e7a504ce1a5e9473d8223a08353d03abb4ea12f3bc4ce9ed37597538b583"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.1/supabase_2.99.0-beta.1_linux_amd64.tar.gz"
      sha256 "60b45fab481c5274b0ae4b0a1e8fd574c6e1fc3f7136bc7edef2d3470be1f81f"
    end
  end

  def install
    bin.install "supabase" => "supabase"
    bin.install "supabase-go" if File.exist?("supabase-go")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase-beta --version")
  end
end
