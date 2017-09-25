class SalesController < ApplicationController

  def index
  end

  def report
    # generate_report()
    ReportWorker.perform_async("nooralnabiiiii", "tareqqqqqqqqqq")
    render text: "REQUEST TO GENERATE A REPORT ADDED TO THE QUEUE"
  end

  private
  def generate_report
    sleep 30
  end

end
