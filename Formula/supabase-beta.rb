class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.2/supabase_2.111.0-beta.2_darwin_arm64.tar.gz"
      sha256 "6d16fa5f9d4b33c5223ef744b8eb47e4d82f08c63f747c40c7b7697cf1c78a88"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.2/supabase_2.111.0-beta.2_darwin_amd64.tar.gz"
      sha256 "73704ba0cb2f237ef6ded650b6a923987a3cd96e5c6cb694ccfe865ed220783f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.2/supabase_2.111.0-beta.2_linux_arm64.tar.gz"
      sha256 "cc44c4ce13e71ace19880c02bf5f3c5af5e969be1cafb5a6afc912ef71bc7243"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.2/supabase_2.111.0-beta.2_linux_amd64.tar.gz"
      sha256 "8f1dc059b2c80639367d93461d3e4d1181c00359bc8c13de538414818b571e50"
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
