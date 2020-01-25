class Patient
  
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    apt = Appointment.all.select do |appointment| appointment.patient == self
    end
    p apt
  end
  
  def doctors
    self.appointments.collect {|appointment| appointment.doctor}
  end
  
end