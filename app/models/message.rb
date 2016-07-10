class Message < ActiveRecord::Base
    
    validates:name , presence:true
    validates:message , presence:true
    validates_format_of :message, without: /kuy|ควย|หี|เหี้ย|สัส|ควาย|พ่อมืงตาย|แม่มืงตาย|hee|ass|asshole|jackass|motherfucker|fuck|shit|bitch|bastard|jerk|fuck you|putang ina mo|son of bitch|dumb|retard|silly|fool|fuck you|hia|sud|sus|sas|kwai|kuai|kuay|cuy|quy|quay|cuay|stfu|wtf/
    validates_format_of :name, without: /kuy|ควย|หี|เหี้ย|สัส|ควาย|พ่อมืงตาย|แม่มืงตาย|hee|ass|asshole|jackass|motherfucker|fuck|shit|bitch|bastard|jerk|fuck you|putang ina mo|son of bitch|dumb|retard|silly|fool|fuck you|hia|sud|sus|sas|kwai|kuai|kuay|cuy|quy|quay|cuay|stfu|wtf/
    validates_format_of :company, without: /kuy|ควย|หี|เหี้ย|สัส|ควาย|พ่อมืงตาย|แม่มืงตาย|hee|ass|asshole|jackass|motherfucker|fuck|shit|bitch|bastard|jerk|fuck you|putang ina mo|son of bitch|dumb|retard|silly|fool|fuck you|hia|sud|sus|sas|kwai|kuai|kuay|cuy|quy|quay|cuay|stfu|wtf/
    
end