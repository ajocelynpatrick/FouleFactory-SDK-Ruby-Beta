# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module FouleFactoryApi
  class TemplateNewWriterServiceModel < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id_project_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :title

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [List of TemplateInstructionWriterServiceModel]
    attr_accessor :instructions

    # TODO: Write general description for this method
    # @return [List of TemplateColumnWriterServiceModel]
    attr_accessor :columns

    # TODO: Write general description for this method
    # @return [List of TemplateQuestionWriterServiceModel]
    attr_accessor :questions

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["id_project_type"] = "IdProjectType"
        @hash["title"] = "Title"
        @hash["description"] = "Description"
        @hash["instructions"] = "Instructions"
        @hash["columns"] = "Columns"
        @hash["questions"] = "Questions"
      end
      @hash
    end

    def initialize(id_project_type = nil,
                   title = nil,
                   description = nil,
                   instructions = nil,
                   columns = nil,
                   questions = nil)
      @id_project_type = id_project_type
      @title = title
      @description = description
      @instructions = instructions
      @columns = columns
      @questions = questions
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        id_project_type = hash["IdProjectType"]
        title = hash["Title"]
        description = hash["Description"]
        # Parameter is an array, so we need to iterate through it
        instructions = nil
        if hash["Instructions"] != nil
          instructions = Array.new
          hash["Instructions"].each{|structure| instructions << (TemplateInstructionWriterServiceModel.from_hash(structure) if structure)}
        end
        # Parameter is an array, so we need to iterate through it
        columns = nil
        if hash["Columns"] != nil
          columns = Array.new
          hash["Columns"].each{|structure| columns << (TemplateColumnWriterServiceModel.from_hash(structure) if structure)}
        end
        # Parameter is an array, so we need to iterate through it
        questions = nil
        if hash["Questions"] != nil
          questions = Array.new
          hash["Questions"].each{|structure| questions << (TemplateQuestionWriterServiceModel.from_hash(structure) if structure)}
        end

        # Create object from extracted values
        TemplateNewWriterServiceModel.new(id_project_type,
                                          title,
                                          description,
                                          instructions,
                                          columns,
                                          questions)
      end
    end
  end
end