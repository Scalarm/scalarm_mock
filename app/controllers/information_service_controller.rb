class InformationServiceController < ApplicationController
  def self.create_list_method(services_name, default_list=[])
    define_method "#{services_name}_list" do
      urls = (Rails.application.secrets.send("#{services_name}_urls") || default_list)
      render json: urls, status: 200
    end
  end

  create_list_method :experiment_managers
  create_list_method :storage_managers
  create_list_method :chart_services

  create_list_method :db_routers, %w(localhost:27017)
  create_list_method :db_config_services, %w(localhost:28000)
  create_list_method :db_instances, %w(localhost:30000)
end
