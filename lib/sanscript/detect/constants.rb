# frozen_string_literal: true

module Sanscript
  module Detect
    # Constants for scheme detection

    # Match any character in the block of Brahmic scripts
    # between Devanagari and Malayalam.
    RE_BRAHMIC_RANGE = /[\u0900-\u0d7f]/

    # Match each individual Brahmic script.
    RE_BRAHMIC_SCRIPTS = {
      devanagari: /\p{Devanagari}/,
      bengali: /\p{Bengali}/,
      gurmukhi: /\p{Gurmukhi}/,
      gujarati: /\p{Gujarati}/,
      oriya: /\p{Oriya}/,
      tamil: /\p{Tamil}/,
      telugu: /\p{Telugu}/,
      kannada: /\p{Kannada}/,
      malayalam: /\p{Malayalam}/,
    }.freeze

    # Match on special Roman characters
    RE_IAST_OR_KOLKATA_ONLY = /[āīūṛṝḷḹēōṃḥṅñṭḍṇśṣḻ]/i

    # Match on Kolkata-specific Roman characters
    RE_KOLKATA_ONLY = /[ēō]/i

    # Match on ITRANS-only
    RE_ITRANS_ONLY = /ee|oo|\^[iI]|RR[iI]|L[iI]|~N|N\^|Ch|chh|JN|sh|Sh|\.a/

    # Match on SLP1-only characters and bigrams
    RE_SLP1_ONLY = /[fFxXEOCYwWqQPB]|kz|N[kg]|tT|dD|S[cn]|[aAiIuUeo]R|G[yr]/

    # Match on Velthuis-only characters
    RE_VELTHUIS_ONLY = /\.[mhnrlntds]|"n|~s/

    # Match on chars shared by ITRANS and Velthuis
    RE_ITRANS_OR_VELTHUIS_ONLY = /aa|ii|uu|~n/

    # Match on characters available in Harvard-Kyoto
    RE_HARVARD_KYOTO = /[aAiIuUeoRMHkgGcjJTDNtdnpbmyrlvzSsh]/

    # Match ##...## or {#...#} control blocks.
    RE_CONTROL_BLOCK = /(?<!\\)##.*?(?<!\\)##|(?<!\\)\{#.*?(?<!\\)#\}/

    private_constant :RE_BRAHMIC_RANGE, :RE_BRAHMIC_SCRIPTS, :RE_IAST_OR_KOLKATA_ONLY,
                     :RE_KOLKATA_ONLY, :RE_ITRANS_ONLY, :RE_SLP1_ONLY, :RE_VELTHUIS_ONLY,
                     :RE_ITRANS_OR_VELTHUIS_ONLY, :RE_HARVARD_KYOTO, :RE_CONTROL_BLOCK
  end
end