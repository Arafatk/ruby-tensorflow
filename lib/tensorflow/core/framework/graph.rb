# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: tensorflow/core/framework/graph.proto

require 'google/protobuf'

require 'tensorflow/core/framework/attr_value'
require 'tensorflow/core/framework/function'
require 'tensorflow/core/framework/versions'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "tensorflow.GraphDef" do
    repeated :node, :message, 1, "tensorflow.NodeDef"
    optional :versions, :message, 4, "tensorflow.VersionDef"
    optional :version, :int32, 3
    optional :library, :message, 2, "tensorflow.FunctionDefLibrary"
  end
  add_message "tensorflow.NodeDef" do
    optional :name, :string, 1
    optional :op, :string, 2
    repeated :input, :string, 3
    optional :device, :string, 4
    map :attr, :string, :message, 5, "tensorflow.AttrValue"
  end
end

module Tensorflow
  GraphDef = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.GraphDef").msgclass
  NodeDef = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.NodeDef").msgclass
end