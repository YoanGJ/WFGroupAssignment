module SessionsHelper
    
    def log_in_admin(admin)
        session[:admin_id] = admin.id
    end
    
    def log_in_student(student)
        session[:student_id] = student.id
    end
    
    def current_admin
       @current_admin ||= Admin.find_by(id: session[:admin_id])
    end
    
    def current_student
       @current_student ||= Student.find_by(id: session[:student_id])
    end
    
    def admin_logged_in?
       !current_admin.nil?
    end
    
    def student_logged_in?
       !current_student.nil? 
    end
    
    def remember_admin(admin)
       admin.remember_admin
       cookies.permanent.signed[:admin_id] = admin.id
       cookies.permanent[:remember_token] = admin.remember_token
    end
    
    def remember_student(student)
       student.remember_student
       cookies.permanent.signed[:student_id] = student.id
       cookies.permanent[:remember_token] = student.remember_token
    end
    
    def log_out_admin
       session.delete(:admin_id)
       @current_admin = nil
    end
    
    def log_out_student
       session.delete(:student_admin)
       @current_student = nil
    end
    
    def destroy
       log_out_admin
       redirect_to root_url 
    end
    
    def destroy
        log_out_student
        redirect_to root_url
    end
    
end
