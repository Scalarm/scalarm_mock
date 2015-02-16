class ExperimentManagerController < ApplicationController
  def simulation_managers_list
    render json: {status: 'ok', sm_records: []}
  end
end
