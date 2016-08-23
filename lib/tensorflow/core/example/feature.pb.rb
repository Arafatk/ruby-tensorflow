#!/usr/bin/env ruby
# Generated by the protocol buffer compiler. DO NOT EDIT!

require 'protocol_buffers'

module Tensorflow
  # forward declarations
  class BytesList < ::ProtocolBuffers::Message; end
  class FloatList < ::ProtocolBuffers::Message; end
  class Int64List < ::ProtocolBuffers::Message; end
  class Feature < ::ProtocolBuffers::Message; end
  class Features < ::ProtocolBuffers::Message; end
  class FeatureList < ::ProtocolBuffers::Message; end
  class FeatureLists < ::ProtocolBuffers::Message; end

  class BytesList < ::ProtocolBuffers::Message
    set_fully_qualified_name "tensorflow.BytesList"

    repeated :bytes, :value, 1
  end

  class FloatList < ::ProtocolBuffers::Message
    set_fully_qualified_name "tensorflow.FloatList"

    repeated :float, :value, 1, :packed => true 
  end

  class Int64List < ::ProtocolBuffers::Message
    set_fully_qualified_name "tensorflow.Int64List"

    repeated :int64, :value, 1, :packed => true 
  end

  class Feature < ::ProtocolBuffers::Message
    set_fully_qualified_name "tensorflow.Feature"

    optional ::Tensorflow::BytesList, :bytes_list, 1
    optional ::Tensorflow::FloatList, :float_list, 2
    optional ::Tensorflow::Int64List, :int64_list, 3
  end

  class Features < ::ProtocolBuffers::Message
    # forward declarations
    class FeatureEntry < ::ProtocolBuffers::Message; end

    set_fully_qualified_name "tensorflow.Features"

    # nested messages
    class FeatureEntry < ::ProtocolBuffers::Message
      set_fully_qualified_name "tensorflow.Features.FeatureEntry"

      optional :string, :key, 1
      optional ::Tensorflow::Feature, :value, 2
    end

    repeated ::Tensorflow::Features::FeatureEntry, :feature, 1
  end

  class FeatureList < ::ProtocolBuffers::Message
    set_fully_qualified_name "tensorflow.FeatureList"

    repeated ::Tensorflow::Feature, :feature, 1
  end

  class FeatureLists < ::ProtocolBuffers::Message
    # forward declarations
    class FeatureListEntry < ::ProtocolBuffers::Message; end

    set_fully_qualified_name "tensorflow.FeatureLists"

    # nested messages
    class FeatureListEntry < ::ProtocolBuffers::Message
      set_fully_qualified_name "tensorflow.FeatureLists.FeatureListEntry"

      optional :string, :key, 1
      optional ::Tensorflow::FeatureList, :value, 2
    end

    repeated ::Tensorflow::FeatureLists::FeatureListEntry, :feature_list, 1
  end

end
