require 'accountability_block/version'
require 'accountability_block/registry'
require 'accountability_block/nag'
require 'accountability_block/syntax/default'

module AccountabilityBlock
  def self.nags
    @nags ||= Registry.new
  end

  def self.register_nag(nag)
    nags.add(nag)
  end

  def self.nag_by_name(name)
    nags.find(name)
  end

  def self.nag(name)
    nag = nags.find(name)

    nag.present? ? nag.message : ""
  end
end
