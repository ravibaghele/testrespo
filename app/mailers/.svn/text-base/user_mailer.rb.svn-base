class UserMailer < ActionMailer::Base

  default :from => "#{MY_EMAIL}"
  def password_reset(user)
    @lgn = user
    mail :to => user.email, :subject => "Successful Edge Centre Password Reset.", :from => "#{MY_EMAIL}"
  end

  def send_temporary_user_details(temp_user, admin_email_id)
    @temp_user = temp_user
    mail(:to => admin_email_id, :cc => @temp_user.email_id, :subject => "Edge Centre Forgot Username Query",  :from => "#{MY_EMAIL}")
  end

  def forgot_password(login)
    @lgn = login
    mail(:to =>  @lgn.user_name, :subject => "Successful Edge Centre Password Reset (by Admin)", :from => "#{MY_EMAIL}")
  end

  def reset_password(login)
    @lgn = login
    mail(:to => @lgn.user_name, :subject => " Successful Edge Centre Password Reset.", :from => "#{MY_EMAIL}")
  end

  def registration_confirmation(login, creator)
    @lgn = login
    mail(:to => login.user.primary_email_id, :cc => creator.primary_email_id, :subject => "Edge Centre Registration", :from => "#{MY_EMAIL}")
  end

  def registration_password_confirmation(login)
    @lgn = login
    mail(:to => login.user.primary_email_id, :subject => "Edge Centre Registration - Password", :from => "#{MY_EMAIL}")
  end

  def updation_confirmation(login, creator)
    @lgn = login
    @creator = creator
    mail(:to => login.user.primary_email_id, :cc => creator.primary_email_id, :subject => "Edge Centre Personal Details Details Updated Successfully.", :from => "#{MY_EMAIL}")
  end

  def exception(e)
    @exception = e
    mail(:to => "rajkumar.lalwani@gmail.com, karanvpurohit@gmail.com", :subject => "Exception notification in production", :from => "#{MY_EMAIL}")
  end

  def newcashPointRequest (cashPointRequest)
    @request = cashPointRequest
    mail(:to => client_team_email_ids,:cc => service_team_email_ids  , :subject => "ItzCashWorld, #{@request.cashpoint_name}  New Cashpoint Request",  :from => "#{MY_EMAIL}")
  end

  def newcashPointRequestListAdd (request_nos)
    @request_nos = request_nos
    mail(:to => client_team_email_ids,:cc => admin_team_email_ids+","+service_team_email_ids  , :subject => "ItzCashWorld, #{request_nos} New Cashpoint Requests Added Through XL ",  :from => "#{MY_EMAIL}")
  end

  def recceReportUpload(branchRequest)
    @request = branchRequest
    mail(:to => client_team_email_ids ,:cc => service_team_email_ids  , :subject => "ItzCashWorld, #{@request.cashpoint_name} Recce Report Uploaded",  :from => "#{MY_EMAIL}")
  end

  def recceReportStatus(branchRequest,document)
    @request = branchRequest
    @document = document
    mail(:to => service_team_email_ids,:cc => admin_team_email_ids  , :subject => "ItzCashWorld, #{@request.cashpoint_name} Recce #{@document.report_status}",  :from => "#{MY_EMAIL}")
  end

  def executionUpload(cashpointRequest)
    @request = cashpointRequest
    mail(:to => client_team_email_ids,:cc => service_team_email_ids  , :subject => "ItzCashWorld, #{@request.cashpoint_name} Executione Report Uploaded",  :from => "#{MY_EMAIL}")
  end

  # ///////////////////////TEAM MEMBERS EMAIL_IDS RETURN FROM HERE////////////////////////////
  def admin_team_email_ids
    admin_email_ids =''
    User.joins(:teams).where("teams.team_type = 'admin'").each do |u|
      admin_email_ids += ", " + u.primary_email_id
    end
    admin_email_ids
  end

  def client_team_email_ids
    client_email_ids =''
    User.joins(:teams).where("teams.team_type = 'client'").each do |u|
      client_email_ids += ", " + u.primary_email_id
    end
    client_email_ids
  end

  def service_team_email_ids
    service_email_ids = ''
    User.joins(:teams).where("teams.team_type = 'service'").each do |u|
      service_email_ids += ", " + u.primary_email_id
    end
    service_email_ids
  end

end