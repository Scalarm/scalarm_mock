module SimulationManagersConfig
  def self.status
    'ok'
  end

  def self.sm_records
    [
        {
            _id: BSON::ObjectId.new.to_s,
            user_id: BSON::ObjectId.new.to_s, # TODO: should be the same for one request
            experiment_id: BSON::ObjectId.new.to_s,
            sm_uuid: SecureRandom.uuid,
            time_limit: 60,
            infrastructure: 'qsub',
            job_id: '50120390.batch.grid.cyf-kr.edu.pl',
            scheduler_type: 'qsub',
            grant_id: 'plguser2014b',
            nodes: 1,
            ppn: 1,
            sm_initialized_at: Time.now,
            created_at: (Time.now-10.minutes),
            state: :running_sm
        }
    ]
  end
end