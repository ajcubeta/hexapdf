# -*- encoding: utf-8 -*-

require 'hexapdf/pdf/dictionary'

module HexaPDF
  module PDF
    module Type

      # Represents a graphics state parameter dictionary.
      #
      # This dictionary can be used to define most graphics state parameters that are available.
      # Some parameters can only be set by an operator, some only by the dictionary but most by
      # both.
      #
      # See: PDF1.7 s8.4.5, s8.1
      class GraphicsStateParameter < Dictionary

        define_field :Type,          type: Symbol, required: true, default: :ExtGState
        define_field :LW,            type: Numeric, version: "1.3"
        define_field :LC,            type: Integer, version: "1.3"
        define_field :LJ,            type: Integer, version: "1.3"
        define_field :ML,            type: Numeric, version: "1.3"
        define_field :D,             type: Array, version: "1.3"
        define_field :RI,            type: Symbol, version: "1.3"
        define_field :OP,            type: Boolean
        define_field :op,            type: Boolean, version: "1.3"
        define_field :OPM,           type: Integer, version: "1.3"
        define_field :Font,          type: Array, version: "1.3"
        define_field :BG,            type: [Dictionary, Hash, Stream]
        define_field :BG2,           type: [Dictionary, Hash, Stream, Symbol], version: "1.3"
        define_field :UCR,           type: [Dictionary, Hash, Stream]
        define_field :UCR2,          type: [Dictionary, Hash, Stream, Symbol], version: "1.3"
        define_field :TR,            type: [Dictionary, Hash, Stream, Array, Symbol]
        define_field :TR2,           type: [Dictionary, Hash, Stream, Array, Symbol], version: "1.3"
        define_field :HT,            type: [Dictionary, Hash, Stream, Symbol]
        define_field :FL,            type: Numeric, version: "1.3"
        define_field :SM,            type: Numeric, version: "1.3"
        define_field :SA,            type: Boolean
        define_field :BM,            type: [Symbol, Array], version: "1.4"
        define_field :SMask,         type: [Dictionary, Hash, Array], version: "1.4"
        define_field :CA,            type: Numeric, version: "1.4"
        define_field :ca,            type: Numeric, version: "1.4"
        define_field :AIS,           type: Boolean, version: "1.4"
        define_field :TK,            type: Boolean, version: "1.4"

      end

    end
  end
end
