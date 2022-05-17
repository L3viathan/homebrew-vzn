class Aceto < Formula
  include Language::Python::Virtualenv

  desc "A programming language based on a 2D Hilbert curve grid"
  homepage "https://github.com/aceto/aceto"
  url "https://github.com/aceto/aceto/archive/refs/tags/v1.10.2.tar.gz"
  sha256 "2948038f8e3c373c417bb435af1403897ac5f015aaae663a3f5c83edef989202"
  license ""

  depends_on "python"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    virtualenv_install_with_resources
  end
end
