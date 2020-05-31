class ApplicationController < ActionController::API
    def current_user
        User.new
    end

    def fields
        params.permit!.to_h["fields"]
    end

    def render_item(item, fields)
      return {} if item.blank?
      return item if fields.blank?
      json_data = {}
      for field in fields do
        if field.is_a? String
          json_data[field] = (item.class.method_defined? field) ? item.send(field) : nil
        end

        if field.is_a? Hash
          field_name = field.keys.first
          values = field.values.first
          json_data[field_name] = (item.class.method_defined? field_name) ? render_item(item.send(field_name), values) : nil
        end
      end

      json_data
    end

    def render_items(items, fields)
      items.map { | item | render_item(item, fields) }
    end
end
