class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.1-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.8/supabase_2.115.1-beta.8_darwin_arm64.tar.gz"
      sha256 "3f001335ef830bf94d0c9e8668937127bc41c0975861a9c1093266b015c5c56c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.8/supabase_2.115.1-beta.8_darwin_amd64.tar.gz"
      sha256 "fa1ced09ef4650becbf17e263e000b4dd73378e512ed4592291752ffbe195cd4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.8/supabase_2.115.1-beta.8_linux_arm64.tar.gz"
      sha256 "b5b088557909eaefc02e851c36c84b6473fb01a4893f4c22a01275603d3d04a8"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.8/supabase_2.115.1-beta.8_linux_amd64.tar.gz"
      sha256 "21e57a5a905822cf901b4720c25c158ca895a19a7843e69ba916221eea40558d"
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
