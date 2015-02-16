require './config/mocks/simulation_managers_config'

class ExperimentManagerController < ApplicationController
  def simulation_managers_list
    # how_many = 3
    # sm_records = (1..how_many).collect { SimulationManagers.generate_record }
    render json: {
               status: SimulationManagersConfig.status,
               sm_records: SimulationManagersConfig.sm_records
           }
  end
end
