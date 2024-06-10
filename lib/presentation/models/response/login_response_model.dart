import 'dart:convert';

class LoginResponseModel {
  final String access;
  final UserData userData;

  LoginResponseModel({
    required this.access,
    required this.userData,
  });

  LoginResponseModel copyWith({
    String? access,
    UserData? userData,
  }) =>
      LoginResponseModel(
        access: access ?? this.access,
        userData: userData ?? this.userData,
      );

  factory LoginResponseModel.fromRawJson(String str) =>
      LoginResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseModel(
        access: json["access"],
        userData: UserData.fromJson(json["user_data"]),
      );

  Map<String, dynamic> toJson() => {
        "access": access,
        "user_data": userData.toJson(),
      };
}

class UserData {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String phoneNumber;
  final String userType;
  final bool isVerified;
  final bool isPhoneNumberVerified;
  final String avatar;
  final UserDataPermission permission;
  final String username;
  final bool isSuperuser;
  final String userSubType;
  final dynamic partner;

  UserData({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.userType,
    required this.isVerified,
    required this.isPhoneNumberVerified,
    required this.avatar,
    required this.permission,
    required this.username,
    required this.isSuperuser,
    required this.userSubType,
    required this.partner,
  });

  UserData copyWith({
    int? id,
    String? firstName,
    String? lastName,
    String? email,
    String? phoneNumber,
    String? userType,
    bool? isVerified,
    bool? isPhoneNumberVerified,
    String? avatar,
    UserDataPermission? permission,
    String? username,
    bool? isSuperuser,
    String? userSubType,
    dynamic partner,
  }) =>
      UserData(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        userType: userType ?? this.userType,
        isVerified: isVerified ?? this.isVerified,
        isPhoneNumberVerified:
            isPhoneNumberVerified ?? this.isPhoneNumberVerified,
        avatar: avatar ?? this.avatar,
        permission: permission ?? this.permission,
        username: username ?? this.username,
        isSuperuser: isSuperuser ?? this.isSuperuser,
        userSubType: userSubType ?? this.userSubType,
        partner: partner ?? this.partner,
      );

  factory UserData.fromRawJson(String str) =>
      UserData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        userType: json["user_type"],
        isVerified: json["is_verified"],
        isPhoneNumberVerified: json["is_phone_number_verified"],
        avatar: json["avatar"],
        permission: UserDataPermission.fromJson(json["permission"]),
        username: json["username"],
        isSuperuser: json["is_superuser"],
        userSubType: json["user_sub_type"],
        partner: json["partner"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "phone_number": phoneNumber,
        "user_type": userType,
        "is_verified": isVerified,
        "is_phone_number_verified": isPhoneNumberVerified,
        "avatar": avatar,
        "permission": permission.toJson(),
        "username": username,
        "is_superuser": isSuperuser,
        "user_sub_type": userSubType,
        "partner": partner,
      };
}

class UserDataPermission {
  final Group group;
  final PermissionPermission permission;
  final Tokenproxy tokenproxy;
  final Chatmessage chatmessage;
  final Thread thread;
  final College college;
  final Collegeambasador collegeambasador;
  final Contenttype contenttype;
  final Advertisement advertisement;
  final Clientnote clientnote;
  final Contactus contactus;
  final Contactuscomment contactuscomment;
  final Courserequestcomment courserequestcomment;
  final Emailsubscriber emailsubscriber;
  final Note note;
  final Notification notification;
  final Office office;
  final Requestcourse requestcourse;
  final Segment segment;
  final Seo seo;
  final Socialmedia socialmedia;
  final Task task;
  final Taskcomment taskcomment;
  final Answer answer;
  final Chapter chapter;
  final Class permissionClass;
  final Comment comment;
  final Commentreply commentreply;
  final Commentreport commentreport;
  final Content content;
  final Contentfile contentfile;
  final Course course;
  final Coursefeedback coursefeedback;
  final Doubt doubt;
  final Doubtreport doubtreport;
  final Doubttopic doubttopic;
  final Email email;
  final Polloption polloption;
  final Question question;
  final Quiz quiz;
  final Reaction reaction;
  final Stickynote stickynote;
  final Subject subject;
  final Test test;
  final Video video;
  final Clockedschedule clockedschedule;
  final Crontabschedule crontabschedule;
  final Intervalschedule intervalschedule;
  final Periodictask periodictask;
  final Periodictasks periodictasks;
  final Solarschedule solarschedule;
  final Certificate certificate;
  final Courseenroll courseenroll;
  final Coursetrial coursetrial;
  final Groupanswersheet groupanswersheet;
  final Mocktestenroll mocktestenroll;
  final Modelanswersheet modelanswersheet;
  final Quizanswersheet quizanswersheet;
  final Balanceledger balanceledger;
  final Balancesource balancesource;
  final Cart cart;
  final Order order;
  final Referamount referamount;
  final Voucher voucher;
  final Voucherhistory voucherhistory;
  final Blog blog;
  final Blogcategory blogcategory;
  final Company company;
  final Faq faq;
  final Gallery gallery;
  final Landingsection landingsection;
  final Sectioninfo sectioninfo;
  final Termscondition termscondition;
  final Testimonial testimonial;
  final Groupanswer groupanswer;
  final Modelanswer modelanswer;
  final Modelquestion modelquestion;
  final Modeltest modeltest;
  final Section section;
  final Categorynote categorynote;
  final Chapternote chapternote;
  final Contentnote contentnote;
  final Coursenote coursenote;
  final Subjectnote subjectnote;
  final Accesstoken accesstoken;
  final Application application;
  final Grant grant;
  final Idtoken idtoken;
  final Refreshtoken refreshtoken;
  final Partner partner;
  final Attendance attendance;
  final Physcialmocktest physcialmocktest;
  final Physcialmockteststudent physcialmockteststudent;
  final Physicalclass physicalclass;
  final Physicalclassbatch physicalclassbatch;
  final Physicalclassbooking physicalclassbooking;
  final Physicalclassinfo physicalclassinfo;
  final Student student;
  final Institute institute;
  final Learnsic learnsic;
  final Level level;
  final Result result;
  final Resultfile resultfile;
  final Subjectscore subjectscore;
  final Announcement announcement;
  final Assesment assesment;
  final Assessmentanswer assessmentanswer;
  final Assessmentfeedback assessmentfeedback;
  final Assessmentfiles assessmentfiles;
  final Assessmentquestion assessmentquestion;
  final Lecture lecture;
  final Lecturememeber lecturememeber;
  final Lecturevideo lecturevideo;
  final Room room;
  final Roommember roommember;
  final Site site;
  final Association association;
  final Code code;
  final Nonce nonce;
  final Partial partial;
  final Usersocialauth usersocialauth;
  final Livetracker livetracker;
  final Mfaemail mfaemail;
  final Refer refer;
  final Smsotp smsotp;
  final Timetracker timetracker;
  final Tutor tutor;
  final Tutoravailability tutoravailability;
  final Tutorbooked tutorbooked;
  final Tutorcontract tutorcontract;
  final Tutoreducation tutoreducation;
  final Tutorexperience tutorexperience;
  final Tutorrating tutorrating;
  final Tutorsubjects tutorsubjects;
  final User user;
  final Useractivity useractivity;
  final Userlogintrack userlogintrack;
  final Userverifytoken userverifytoken;
  final Uservisit uservisit;

  UserDataPermission({
    required this.group,
    required this.permission,
    required this.tokenproxy,
    required this.chatmessage,
    required this.thread,
    required this.college,
    required this.collegeambasador,
    required this.contenttype,
    required this.advertisement,
    required this.clientnote,
    required this.contactus,
    required this.contactuscomment,
    required this.courserequestcomment,
    required this.emailsubscriber,
    required this.note,
    required this.notification,
    required this.office,
    required this.requestcourse,
    required this.segment,
    required this.seo,
    required this.socialmedia,
    required this.task,
    required this.taskcomment,
    required this.answer,
    required this.chapter,
    required this.permissionClass,
    required this.comment,
    required this.commentreply,
    required this.commentreport,
    required this.content,
    required this.contentfile,
    required this.course,
    required this.coursefeedback,
    required this.doubt,
    required this.doubtreport,
    required this.doubttopic,
    required this.email,
    required this.polloption,
    required this.question,
    required this.quiz,
    required this.reaction,
    required this.stickynote,
    required this.subject,
    required this.test,
    required this.video,
    required this.clockedschedule,
    required this.crontabschedule,
    required this.intervalschedule,
    required this.periodictask,
    required this.periodictasks,
    required this.solarschedule,
    required this.certificate,
    required this.courseenroll,
    required this.coursetrial,
    required this.groupanswersheet,
    required this.mocktestenroll,
    required this.modelanswersheet,
    required this.quizanswersheet,
    required this.balanceledger,
    required this.balancesource,
    required this.cart,
    required this.order,
    required this.referamount,
    required this.voucher,
    required this.voucherhistory,
    required this.blog,
    required this.blogcategory,
    required this.company,
    required this.faq,
    required this.gallery,
    required this.landingsection,
    required this.sectioninfo,
    required this.termscondition,
    required this.testimonial,
    required this.groupanswer,
    required this.modelanswer,
    required this.modelquestion,
    required this.modeltest,
    required this.section,
    required this.categorynote,
    required this.chapternote,
    required this.contentnote,
    required this.coursenote,
    required this.subjectnote,
    required this.accesstoken,
    required this.application,
    required this.grant,
    required this.idtoken,
    required this.refreshtoken,
    required this.partner,
    required this.attendance,
    required this.physcialmocktest,
    required this.physcialmockteststudent,
    required this.physicalclass,
    required this.physicalclassbatch,
    required this.physicalclassbooking,
    required this.physicalclassinfo,
    required this.student,
    required this.institute,
    required this.learnsic,
    required this.level,
    required this.result,
    required this.resultfile,
    required this.subjectscore,
    required this.announcement,
    required this.assesment,
    required this.assessmentanswer,
    required this.assessmentfeedback,
    required this.assessmentfiles,
    required this.assessmentquestion,
    required this.lecture,
    required this.lecturememeber,
    required this.lecturevideo,
    required this.room,
    required this.roommember,
    required this.site,
    required this.association,
    required this.code,
    required this.nonce,
    required this.partial,
    required this.usersocialauth,
    required this.livetracker,
    required this.mfaemail,
    required this.refer,
    required this.smsotp,
    required this.timetracker,
    required this.tutor,
    required this.tutoravailability,
    required this.tutorbooked,
    required this.tutorcontract,
    required this.tutoreducation,
    required this.tutorexperience,
    required this.tutorrating,
    required this.tutorsubjects,
    required this.user,
    required this.useractivity,
    required this.userlogintrack,
    required this.userverifytoken,
    required this.uservisit,
  });

  UserDataPermission copyWith({
    Group? group,
    PermissionPermission? permission,
    Tokenproxy? tokenproxy,
    Chatmessage? chatmessage,
    Thread? thread,
    College? college,
    Collegeambasador? collegeambasador,
    Contenttype? contenttype,
    Advertisement? advertisement,
    Clientnote? clientnote,
    Contactus? contactus,
    Contactuscomment? contactuscomment,
    Courserequestcomment? courserequestcomment,
    Emailsubscriber? emailsubscriber,
    Note? note,
    Notification? notification,
    Office? office,
    Requestcourse? requestcourse,
    Segment? segment,
    Seo? seo,
    Socialmedia? socialmedia,
    Task? task,
    Taskcomment? taskcomment,
    Answer? answer,
    Chapter? chapter,
    Class? permissionClass,
    Comment? comment,
    Commentreply? commentreply,
    Commentreport? commentreport,
    Content? content,
    Contentfile? contentfile,
    Course? course,
    Coursefeedback? coursefeedback,
    Doubt? doubt,
    Doubtreport? doubtreport,
    Doubttopic? doubttopic,
    Email? email,
    Polloption? polloption,
    Question? question,
    Quiz? quiz,
    Reaction? reaction,
    Stickynote? stickynote,
    Subject? subject,
    Test? test,
    Video? video,
    Clockedschedule? clockedschedule,
    Crontabschedule? crontabschedule,
    Intervalschedule? intervalschedule,
    Periodictask? periodictask,
    Periodictasks? periodictasks,
    Solarschedule? solarschedule,
    Certificate? certificate,
    Courseenroll? courseenroll,
    Coursetrial? coursetrial,
    Groupanswersheet? groupanswersheet,
    Mocktestenroll? mocktestenroll,
    Modelanswersheet? modelanswersheet,
    Quizanswersheet? quizanswersheet,
    Balanceledger? balanceledger,
    Balancesource? balancesource,
    Cart? cart,
    Order? order,
    Referamount? referamount,
    Voucher? voucher,
    Voucherhistory? voucherhistory,
    Blog? blog,
    Blogcategory? blogcategory,
    Company? company,
    Faq? faq,
    Gallery? gallery,
    Landingsection? landingsection,
    Sectioninfo? sectioninfo,
    Termscondition? termscondition,
    Testimonial? testimonial,
    Groupanswer? groupanswer,
    Modelanswer? modelanswer,
    Modelquestion? modelquestion,
    Modeltest? modeltest,
    Section? section,
    Categorynote? categorynote,
    Chapternote? chapternote,
    Contentnote? contentnote,
    Coursenote? coursenote,
    Subjectnote? subjectnote,
    Accesstoken? accesstoken,
    Application? application,
    Grant? grant,
    Idtoken? idtoken,
    Refreshtoken? refreshtoken,
    Partner? partner,
    Attendance? attendance,
    Physcialmocktest? physcialmocktest,
    Physcialmockteststudent? physcialmockteststudent,
    Physicalclass? physicalclass,
    Physicalclassbatch? physicalclassbatch,
    Physicalclassbooking? physicalclassbooking,
    Physicalclassinfo? physicalclassinfo,
    Student? student,
    Institute? institute,
    Learnsic? learnsic,
    Level? level,
    Result? result,
    Resultfile? resultfile,
    Subjectscore? subjectscore,
    Announcement? announcement,
    Assesment? assesment,
    Assessmentanswer? assessmentanswer,
    Assessmentfeedback? assessmentfeedback,
    Assessmentfiles? assessmentfiles,
    Assessmentquestion? assessmentquestion,
    Lecture? lecture,
    Lecturememeber? lecturememeber,
    Lecturevideo? lecturevideo,
    Room? room,
    Roommember? roommember,
    Site? site,
    Association? association,
    Code? code,
    Nonce? nonce,
    Partial? partial,
    Usersocialauth? usersocialauth,
    Livetracker? livetracker,
    Mfaemail? mfaemail,
    Refer? refer,
    Smsotp? smsotp,
    Timetracker? timetracker,
    Tutor? tutor,
    Tutoravailability? tutoravailability,
    Tutorbooked? tutorbooked,
    Tutorcontract? tutorcontract,
    Tutoreducation? tutoreducation,
    Tutorexperience? tutorexperience,
    Tutorrating? tutorrating,
    Tutorsubjects? tutorsubjects,
    User? user,
    Useractivity? useractivity,
    Userlogintrack? userlogintrack,
    Userverifytoken? userverifytoken,
    Uservisit? uservisit,
  }) =>
      UserDataPermission(
        group: group ?? this.group,
        permission: permission ?? this.permission,
        tokenproxy: tokenproxy ?? this.tokenproxy,
        chatmessage: chatmessage ?? this.chatmessage,
        thread: thread ?? this.thread,
        college: college ?? this.college,
        collegeambasador: collegeambasador ?? this.collegeambasador,
        contenttype: contenttype ?? this.contenttype,
        advertisement: advertisement ?? this.advertisement,
        clientnote: clientnote ?? this.clientnote,
        contactus: contactus ?? this.contactus,
        contactuscomment: contactuscomment ?? this.contactuscomment,
        courserequestcomment: courserequestcomment ?? this.courserequestcomment,
        emailsubscriber: emailsubscriber ?? this.emailsubscriber,
        note: note ?? this.note,
        notification: notification ?? this.notification,
        office: office ?? this.office,
        requestcourse: requestcourse ?? this.requestcourse,
        segment: segment ?? this.segment,
        seo: seo ?? this.seo,
        socialmedia: socialmedia ?? this.socialmedia,
        task: task ?? this.task,
        taskcomment: taskcomment ?? this.taskcomment,
        answer: answer ?? this.answer,
        chapter: chapter ?? this.chapter,
        permissionClass: permissionClass ?? this.permissionClass,
        comment: comment ?? this.comment,
        commentreply: commentreply ?? this.commentreply,
        commentreport: commentreport ?? this.commentreport,
        content: content ?? this.content,
        contentfile: contentfile ?? this.contentfile,
        course: course ?? this.course,
        coursefeedback: coursefeedback ?? this.coursefeedback,
        doubt: doubt ?? this.doubt,
        doubtreport: doubtreport ?? this.doubtreport,
        doubttopic: doubttopic ?? this.doubttopic,
        email: email ?? this.email,
        polloption: polloption ?? this.polloption,
        question: question ?? this.question,
        quiz: quiz ?? this.quiz,
        reaction: reaction ?? this.reaction,
        stickynote: stickynote ?? this.stickynote,
        subject: subject ?? this.subject,
        test: test ?? this.test,
        video: video ?? this.video,
        clockedschedule: clockedschedule ?? this.clockedschedule,
        crontabschedule: crontabschedule ?? this.crontabschedule,
        intervalschedule: intervalschedule ?? this.intervalschedule,
        periodictask: periodictask ?? this.periodictask,
        periodictasks: periodictasks ?? this.periodictasks,
        solarschedule: solarschedule ?? this.solarschedule,
        certificate: certificate ?? this.certificate,
        courseenroll: courseenroll ?? this.courseenroll,
        coursetrial: coursetrial ?? this.coursetrial,
        groupanswersheet: groupanswersheet ?? this.groupanswersheet,
        mocktestenroll: mocktestenroll ?? this.mocktestenroll,
        modelanswersheet: modelanswersheet ?? this.modelanswersheet,
        quizanswersheet: quizanswersheet ?? this.quizanswersheet,
        balanceledger: balanceledger ?? this.balanceledger,
        balancesource: balancesource ?? this.balancesource,
        cart: cart ?? this.cart,
        order: order ?? this.order,
        referamount: referamount ?? this.referamount,
        voucher: voucher ?? this.voucher,
        voucherhistory: voucherhistory ?? this.voucherhistory,
        blog: blog ?? this.blog,
        blogcategory: blogcategory ?? this.blogcategory,
        company: company ?? this.company,
        faq: faq ?? this.faq,
        gallery: gallery ?? this.gallery,
        landingsection: landingsection ?? this.landingsection,
        sectioninfo: sectioninfo ?? this.sectioninfo,
        termscondition: termscondition ?? this.termscondition,
        testimonial: testimonial ?? this.testimonial,
        groupanswer: groupanswer ?? this.groupanswer,
        modelanswer: modelanswer ?? this.modelanswer,
        modelquestion: modelquestion ?? this.modelquestion,
        modeltest: modeltest ?? this.modeltest,
        section: section ?? this.section,
        categorynote: categorynote ?? this.categorynote,
        chapternote: chapternote ?? this.chapternote,
        contentnote: contentnote ?? this.contentnote,
        coursenote: coursenote ?? this.coursenote,
        subjectnote: subjectnote ?? this.subjectnote,
        accesstoken: accesstoken ?? this.accesstoken,
        application: application ?? this.application,
        grant: grant ?? this.grant,
        idtoken: idtoken ?? this.idtoken,
        refreshtoken: refreshtoken ?? this.refreshtoken,
        partner: partner ?? this.partner,
        attendance: attendance ?? this.attendance,
        physcialmocktest: physcialmocktest ?? this.physcialmocktest,
        physcialmockteststudent:
            physcialmockteststudent ?? this.physcialmockteststudent,
        physicalclass: physicalclass ?? this.physicalclass,
        physicalclassbatch: physicalclassbatch ?? this.physicalclassbatch,
        physicalclassbooking: physicalclassbooking ?? this.physicalclassbooking,
        physicalclassinfo: physicalclassinfo ?? this.physicalclassinfo,
        student: student ?? this.student,
        institute: institute ?? this.institute,
        learnsic: learnsic ?? this.learnsic,
        level: level ?? this.level,
        result: result ?? this.result,
        resultfile: resultfile ?? this.resultfile,
        subjectscore: subjectscore ?? this.subjectscore,
        announcement: announcement ?? this.announcement,
        assesment: assesment ?? this.assesment,
        assessmentanswer: assessmentanswer ?? this.assessmentanswer,
        assessmentfeedback: assessmentfeedback ?? this.assessmentfeedback,
        assessmentfiles: assessmentfiles ?? this.assessmentfiles,
        assessmentquestion: assessmentquestion ?? this.assessmentquestion,
        lecture: lecture ?? this.lecture,
        lecturememeber: lecturememeber ?? this.lecturememeber,
        lecturevideo: lecturevideo ?? this.lecturevideo,
        room: room ?? this.room,
        roommember: roommember ?? this.roommember,
        site: site ?? this.site,
        association: association ?? this.association,
        code: code ?? this.code,
        nonce: nonce ?? this.nonce,
        partial: partial ?? this.partial,
        usersocialauth: usersocialauth ?? this.usersocialauth,
        livetracker: livetracker ?? this.livetracker,
        mfaemail: mfaemail ?? this.mfaemail,
        refer: refer ?? this.refer,
        smsotp: smsotp ?? this.smsotp,
        timetracker: timetracker ?? this.timetracker,
        tutor: tutor ?? this.tutor,
        tutoravailability: tutoravailability ?? this.tutoravailability,
        tutorbooked: tutorbooked ?? this.tutorbooked,
        tutorcontract: tutorcontract ?? this.tutorcontract,
        tutoreducation: tutoreducation ?? this.tutoreducation,
        tutorexperience: tutorexperience ?? this.tutorexperience,
        tutorrating: tutorrating ?? this.tutorrating,
        tutorsubjects: tutorsubjects ?? this.tutorsubjects,
        user: user ?? this.user,
        useractivity: useractivity ?? this.useractivity,
        userlogintrack: userlogintrack ?? this.userlogintrack,
        userverifytoken: userverifytoken ?? this.userverifytoken,
        uservisit: uservisit ?? this.uservisit,
      );

  factory UserDataPermission.fromRawJson(String str) =>
      UserDataPermission.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserDataPermission.fromJson(Map<String, dynamic> json) =>
      UserDataPermission(
        group: Group.fromJson(json["group"]),
        permission: PermissionPermission.fromJson(json["permission"]),
        tokenproxy: Tokenproxy.fromJson(json["tokenproxy"]),
        chatmessage: Chatmessage.fromJson(json["chatmessage"]),
        thread: Thread.fromJson(json["thread"]),
        college: College.fromJson(json["college"]),
        collegeambasador: Collegeambasador.fromJson(json["collegeambasador"]),
        contenttype: Contenttype.fromJson(json["contenttype"]),
        advertisement: Advertisement.fromJson(json["advertisement"]),
        clientnote: Clientnote.fromJson(json["clientnote"]),
        contactus: Contactus.fromJson(json["contactus"]),
        contactuscomment: Contactuscomment.fromJson(json["contactuscomment"]),
        courserequestcomment:
            Courserequestcomment.fromJson(json["courserequestcomment"]),
        emailsubscriber: Emailsubscriber.fromJson(json["emailsubscriber"]),
        note: Note.fromJson(json["note"]),
        notification: Notification.fromJson(json["notification"]),
        office: Office.fromJson(json["office"]),
        requestcourse: Requestcourse.fromJson(json["requestcourse"]),
        segment: Segment.fromJson(json["segment"]),
        seo: Seo.fromJson(json["seo"]),
        socialmedia: Socialmedia.fromJson(json["socialmedia"]),
        task: Task.fromJson(json["task"]),
        taskcomment: Taskcomment.fromJson(json["taskcomment"]),
        answer: Answer.fromJson(json["answer"]),
        chapter: Chapter.fromJson(json["chapter"]),
        permissionClass: Class.fromJson(json["class"]),
        comment: Comment.fromJson(json["comment"]),
        commentreply: Commentreply.fromJson(json["commentreply"]),
        commentreport: Commentreport.fromJson(json["commentreport"]),
        content: Content.fromJson(json["content"]),
        contentfile: Contentfile.fromJson(json["contentfile"]),
        course: Course.fromJson(json["course"]),
        coursefeedback: Coursefeedback.fromJson(json["coursefeedback"]),
        doubt: Doubt.fromJson(json["doubt"]),
        doubtreport: Doubtreport.fromJson(json["doubtreport"]),
        doubttopic: Doubttopic.fromJson(json["doubttopic"]),
        email: Email.fromJson(json["email"]),
        polloption: Polloption.fromJson(json["polloption"]),
        question: Question.fromJson(json["question"]),
        quiz: Quiz.fromJson(json["quiz"]),
        reaction: Reaction.fromJson(json["reaction"]),
        stickynote: Stickynote.fromJson(json["stickynote"]),
        subject: Subject.fromJson(json["subject"]),
        test: Test.fromJson(json["test"]),
        video: Video.fromJson(json["video"]),
        clockedschedule: Clockedschedule.fromJson(json["clockedschedule"]),
        crontabschedule: Crontabschedule.fromJson(json["crontabschedule"]),
        intervalschedule: Intervalschedule.fromJson(json["intervalschedule"]),
        periodictask: Periodictask.fromJson(json["periodictask"]),
        periodictasks: Periodictasks.fromJson(json["periodictasks"]),
        solarschedule: Solarschedule.fromJson(json["solarschedule"]),
        certificate: Certificate.fromJson(json["certificate"]),
        courseenroll: Courseenroll.fromJson(json["courseenroll"]),
        coursetrial: Coursetrial.fromJson(json["coursetrial"]),
        groupanswersheet: Groupanswersheet.fromJson(json["groupanswersheet"]),
        mocktestenroll: Mocktestenroll.fromJson(json["mocktestenroll"]),
        modelanswersheet: Modelanswersheet.fromJson(json["modelanswersheet"]),
        quizanswersheet: Quizanswersheet.fromJson(json["quizanswersheet"]),
        balanceledger: Balanceledger.fromJson(json["balanceledger"]),
        balancesource: Balancesource.fromJson(json["balancesource"]),
        cart: Cart.fromJson(json["cart"]),
        order: Order.fromJson(json["order"]),
        referamount: Referamount.fromJson(json["referamount"]),
        voucher: Voucher.fromJson(json["voucher"]),
        voucherhistory: Voucherhistory.fromJson(json["voucherhistory"]),
        blog: Blog.fromJson(json["blog"]),
        blogcategory: Blogcategory.fromJson(json["blogcategory"]),
        company: Company.fromJson(json["company"]),
        faq: Faq.fromJson(json["faq"]),
        gallery: Gallery.fromJson(json["gallery"]),
        landingsection: Landingsection.fromJson(json["landingsection"]),
        sectioninfo: Sectioninfo.fromJson(json["sectioninfo"]),
        termscondition: Termscondition.fromJson(json["termscondition"]),
        testimonial: Testimonial.fromJson(json["testimonial"]),
        groupanswer: Groupanswer.fromJson(json["groupanswer"]),
        modelanswer: Modelanswer.fromJson(json["modelanswer"]),
        modelquestion: Modelquestion.fromJson(json["modelquestion"]),
        modeltest: Modeltest.fromJson(json["modeltest"]),
        section: Section.fromJson(json["section"]),
        categorynote: Categorynote.fromJson(json["categorynote"]),
        chapternote: Chapternote.fromJson(json["chapternote"]),
        contentnote: Contentnote.fromJson(json["contentnote"]),
        coursenote: Coursenote.fromJson(json["coursenote"]),
        subjectnote: Subjectnote.fromJson(json["subjectnote"]),
        accesstoken: Accesstoken.fromJson(json["accesstoken"]),
        application: Application.fromJson(json["application"]),
        grant: Grant.fromJson(json["grant"]),
        idtoken: Idtoken.fromJson(json["idtoken"]),
        refreshtoken: Refreshtoken.fromJson(json["refreshtoken"]),
        partner: Partner.fromJson(json["partner"]),
        attendance: Attendance.fromJson(json["attendance"]),
        physcialmocktest: Physcialmocktest.fromJson(json["physcialmocktest"]),
        physcialmockteststudent:
            Physcialmockteststudent.fromJson(json["physcialmockteststudent"]),
        physicalclass: Physicalclass.fromJson(json["physicalclass"]),
        physicalclassbatch:
            Physicalclassbatch.fromJson(json["physicalclassbatch"]),
        physicalclassbooking:
            Physicalclassbooking.fromJson(json["physicalclassbooking"]),
        physicalclassinfo:
            Physicalclassinfo.fromJson(json["physicalclassinfo"]),
        student: Student.fromJson(json["student"]),
        institute: Institute.fromJson(json["institute"]),
        learnsic: Learnsic.fromJson(json["learnsic"]),
        level: Level.fromJson(json["level"]),
        result: Result.fromJson(json["result"]),
        resultfile: Resultfile.fromJson(json["resultfile"]),
        subjectscore: Subjectscore.fromJson(json["subjectscore"]),
        announcement: Announcement.fromJson(json["announcement"]),
        assesment: Assesment.fromJson(json["assesment"]),
        assessmentanswer: Assessmentanswer.fromJson(json["assessmentanswer"]),
        assessmentfeedback:
            Assessmentfeedback.fromJson(json["assessmentfeedback"]),
        assessmentfiles: Assessmentfiles.fromJson(json["assessmentfiles"]),
        assessmentquestion:
            Assessmentquestion.fromJson(json["assessmentquestion"]),
        lecture: Lecture.fromJson(json["lecture"]),
        lecturememeber: Lecturememeber.fromJson(json["lecturememeber"]),
        lecturevideo: Lecturevideo.fromJson(json["lecturevideo"]),
        room: Room.fromJson(json["room"]),
        roommember: Roommember.fromJson(json["roommember"]),
        site: Site.fromJson(json["site"]),
        association: Association.fromJson(json["association"]),
        code: Code.fromJson(json["code"]),
        nonce: Nonce.fromJson(json["nonce"]),
        partial: Partial.fromJson(json["partial"]),
        usersocialauth: Usersocialauth.fromJson(json["usersocialauth"]),
        livetracker: Livetracker.fromJson(json["livetracker"]),
        mfaemail: Mfaemail.fromJson(json["mfaemail"]),
        refer: Refer.fromJson(json["refer"]),
        smsotp: Smsotp.fromJson(json["smsotp"]),
        timetracker: Timetracker.fromJson(json["timetracker"]),
        tutor: Tutor.fromJson(json["tutor"]),
        tutoravailability:
            Tutoravailability.fromJson(json["tutoravailability"]),
        tutorbooked: Tutorbooked.fromJson(json["tutorbooked"]),
        tutorcontract: Tutorcontract.fromJson(json["tutorcontract"]),
        tutoreducation: Tutoreducation.fromJson(json["tutoreducation"]),
        tutorexperience: Tutorexperience.fromJson(json["tutorexperience"]),
        tutorrating: Tutorrating.fromJson(json["tutorrating"]),
        tutorsubjects: Tutorsubjects.fromJson(json["tutorsubjects"]),
        user: User.fromJson(json["user"]),
        useractivity: Useractivity.fromJson(json["useractivity"]),
        userlogintrack: Userlogintrack.fromJson(json["userlogintrack"]),
        userverifytoken: Userverifytoken.fromJson(json["userverifytoken"]),
        uservisit: Uservisit.fromJson(json["uservisit"]),
      );

  Map<String, dynamic> toJson() => {
        "group": group.toJson(),
        "permission": permission.toJson(),
        "tokenproxy": tokenproxy.toJson(),
        "chatmessage": chatmessage.toJson(),
        "thread": thread.toJson(),
        "college": college.toJson(),
        "collegeambasador": collegeambasador.toJson(),
        "contenttype": contenttype.toJson(),
        "advertisement": advertisement.toJson(),
        "clientnote": clientnote.toJson(),
        "contactus": contactus.toJson(),
        "contactuscomment": contactuscomment.toJson(),
        "courserequestcomment": courserequestcomment.toJson(),
        "emailsubscriber": emailsubscriber.toJson(),
        "note": note.toJson(),
        "notification": notification.toJson(),
        "office": office.toJson(),
        "requestcourse": requestcourse.toJson(),
        "segment": segment.toJson(),
        "seo": seo.toJson(),
        "socialmedia": socialmedia.toJson(),
        "task": task.toJson(),
        "taskcomment": taskcomment.toJson(),
        "answer": answer.toJson(),
        "chapter": chapter.toJson(),
        "class": permissionClass.toJson(),
        "comment": comment.toJson(),
        "commentreply": commentreply.toJson(),
        "commentreport": commentreport.toJson(),
        "content": content.toJson(),
        "contentfile": contentfile.toJson(),
        "course": course.toJson(),
        "coursefeedback": coursefeedback.toJson(),
        "doubt": doubt.toJson(),
        "doubtreport": doubtreport.toJson(),
        "doubttopic": doubttopic.toJson(),
        "email": email.toJson(),
        "polloption": polloption.toJson(),
        "question": question.toJson(),
        "quiz": quiz.toJson(),
        "reaction": reaction.toJson(),
        "stickynote": stickynote.toJson(),
        "subject": subject.toJson(),
        "test": test.toJson(),
        "video": video.toJson(),
        "clockedschedule": clockedschedule.toJson(),
        "crontabschedule": crontabschedule.toJson(),
        "intervalschedule": intervalschedule.toJson(),
        "periodictask": periodictask.toJson(),
        "periodictasks": periodictasks.toJson(),
        "solarschedule": solarschedule.toJson(),
        "certificate": certificate.toJson(),
        "courseenroll": courseenroll.toJson(),
        "coursetrial": coursetrial.toJson(),
        "groupanswersheet": groupanswersheet.toJson(),
        "mocktestenroll": mocktestenroll.toJson(),
        "modelanswersheet": modelanswersheet.toJson(),
        "quizanswersheet": quizanswersheet.toJson(),
        "balanceledger": balanceledger.toJson(),
        "balancesource": balancesource.toJson(),
        "cart": cart.toJson(),
        "order": order.toJson(),
        "referamount": referamount.toJson(),
        "voucher": voucher.toJson(),
        "voucherhistory": voucherhistory.toJson(),
        "blog": blog.toJson(),
        "blogcategory": blogcategory.toJson(),
        "company": company.toJson(),
        "faq": faq.toJson(),
        "gallery": gallery.toJson(),
        "landingsection": landingsection.toJson(),
        "sectioninfo": sectioninfo.toJson(),
        "termscondition": termscondition.toJson(),
        "testimonial": testimonial.toJson(),
        "groupanswer": groupanswer.toJson(),
        "modelanswer": modelanswer.toJson(),
        "modelquestion": modelquestion.toJson(),
        "modeltest": modeltest.toJson(),
        "section": section.toJson(),
        "categorynote": categorynote.toJson(),
        "chapternote": chapternote.toJson(),
        "contentnote": contentnote.toJson(),
        "coursenote": coursenote.toJson(),
        "subjectnote": subjectnote.toJson(),
        "accesstoken": accesstoken.toJson(),
        "application": application.toJson(),
        "grant": grant.toJson(),
        "idtoken": idtoken.toJson(),
        "refreshtoken": refreshtoken.toJson(),
        "partner": partner.toJson(),
        "attendance": attendance.toJson(),
        "physcialmocktest": physcialmocktest.toJson(),
        "physcialmockteststudent": physcialmockteststudent.toJson(),
        "physicalclass": physicalclass.toJson(),
        "physicalclassbatch": physicalclassbatch.toJson(),
        "physicalclassbooking": physicalclassbooking.toJson(),
        "physicalclassinfo": physicalclassinfo.toJson(),
        "student": student.toJson(),
        "institute": institute.toJson(),
        "learnsic": learnsic.toJson(),
        "level": level.toJson(),
        "result": result.toJson(),
        "resultfile": resultfile.toJson(),
        "subjectscore": subjectscore.toJson(),
        "announcement": announcement.toJson(),
        "assesment": assesment.toJson(),
        "assessmentanswer": assessmentanswer.toJson(),
        "assessmentfeedback": assessmentfeedback.toJson(),
        "assessmentfiles": assessmentfiles.toJson(),
        "assessmentquestion": assessmentquestion.toJson(),
        "lecture": lecture.toJson(),
        "lecturememeber": lecturememeber.toJson(),
        "lecturevideo": lecturevideo.toJson(),
        "room": room.toJson(),
        "roommember": roommember.toJson(),
        "site": site.toJson(),
        "association": association.toJson(),
        "code": code.toJson(),
        "nonce": nonce.toJson(),
        "partial": partial.toJson(),
        "usersocialauth": usersocialauth.toJson(),
        "livetracker": livetracker.toJson(),
        "mfaemail": mfaemail.toJson(),
        "refer": refer.toJson(),
        "smsotp": smsotp.toJson(),
        "timetracker": timetracker.toJson(),
        "tutor": tutor.toJson(),
        "tutoravailability": tutoravailability.toJson(),
        "tutorbooked": tutorbooked.toJson(),
        "tutorcontract": tutorcontract.toJson(),
        "tutoreducation": tutoreducation.toJson(),
        "tutorexperience": tutorexperience.toJson(),
        "tutorrating": tutorrating.toJson(),
        "tutorsubjects": tutorsubjects.toJson(),
        "user": user.toJson(),
        "useractivity": useractivity.toJson(),
        "userlogintrack": userlogintrack.toJson(),
        "userverifytoken": userverifytoken.toJson(),
        "uservisit": uservisit.toJson(),
      };
}

class Accesstoken {
  final bool addAccesstoken;
  final bool changeAccesstoken;
  final bool deleteAccesstoken;
  final bool viewAccesstoken;

  Accesstoken({
    required this.addAccesstoken,
    required this.changeAccesstoken,
    required this.deleteAccesstoken,
    required this.viewAccesstoken,
  });

  Accesstoken copyWith({
    bool? addAccesstoken,
    bool? changeAccesstoken,
    bool? deleteAccesstoken,
    bool? viewAccesstoken,
  }) =>
      Accesstoken(
        addAccesstoken: addAccesstoken ?? this.addAccesstoken,
        changeAccesstoken: changeAccesstoken ?? this.changeAccesstoken,
        deleteAccesstoken: deleteAccesstoken ?? this.deleteAccesstoken,
        viewAccesstoken: viewAccesstoken ?? this.viewAccesstoken,
      );

  factory Accesstoken.fromRawJson(String str) =>
      Accesstoken.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Accesstoken.fromJson(Map<String, dynamic> json) => Accesstoken(
        addAccesstoken: json["add_accesstoken"],
        changeAccesstoken: json["change_accesstoken"],
        deleteAccesstoken: json["delete_accesstoken"],
        viewAccesstoken: json["view_accesstoken"],
      );

  Map<String, dynamic> toJson() => {
        "add_accesstoken": addAccesstoken,
        "change_accesstoken": changeAccesstoken,
        "delete_accesstoken": deleteAccesstoken,
        "view_accesstoken": viewAccesstoken,
      };
}

class Advertisement {
  final bool addAdvertisement;
  final bool changeAdvertisement;
  final bool deleteAdvertisement;
  final bool viewAdvertisement;

  Advertisement({
    required this.addAdvertisement,
    required this.changeAdvertisement,
    required this.deleteAdvertisement,
    required this.viewAdvertisement,
  });

  Advertisement copyWith({
    bool? addAdvertisement,
    bool? changeAdvertisement,
    bool? deleteAdvertisement,
    bool? viewAdvertisement,
  }) =>
      Advertisement(
        addAdvertisement: addAdvertisement ?? this.addAdvertisement,
        changeAdvertisement: changeAdvertisement ?? this.changeAdvertisement,
        deleteAdvertisement: deleteAdvertisement ?? this.deleteAdvertisement,
        viewAdvertisement: viewAdvertisement ?? this.viewAdvertisement,
      );

  factory Advertisement.fromRawJson(String str) =>
      Advertisement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Advertisement.fromJson(Map<String, dynamic> json) => Advertisement(
        addAdvertisement: json["add_advertisement"],
        changeAdvertisement: json["change_advertisement"],
        deleteAdvertisement: json["delete_advertisement"],
        viewAdvertisement: json["view_advertisement"],
      );

  Map<String, dynamic> toJson() => {
        "add_advertisement": addAdvertisement,
        "change_advertisement": changeAdvertisement,
        "delete_advertisement": deleteAdvertisement,
        "view_advertisement": viewAdvertisement,
      };
}

class Announcement {
  final bool addAnnouncement;
  final bool changeAnnouncement;
  final bool deleteAnnouncement;
  final bool viewAnnouncement;

  Announcement({
    required this.addAnnouncement,
    required this.changeAnnouncement,
    required this.deleteAnnouncement,
    required this.viewAnnouncement,
  });

  Announcement copyWith({
    bool? addAnnouncement,
    bool? changeAnnouncement,
    bool? deleteAnnouncement,
    bool? viewAnnouncement,
  }) =>
      Announcement(
        addAnnouncement: addAnnouncement ?? this.addAnnouncement,
        changeAnnouncement: changeAnnouncement ?? this.changeAnnouncement,
        deleteAnnouncement: deleteAnnouncement ?? this.deleteAnnouncement,
        viewAnnouncement: viewAnnouncement ?? this.viewAnnouncement,
      );

  factory Announcement.fromRawJson(String str) =>
      Announcement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Announcement.fromJson(Map<String, dynamic> json) => Announcement(
        addAnnouncement: json["add_announcement"],
        changeAnnouncement: json["change_announcement"],
        deleteAnnouncement: json["delete_announcement"],
        viewAnnouncement: json["view_announcement"],
      );

  Map<String, dynamic> toJson() => {
        "add_announcement": addAnnouncement,
        "change_announcement": changeAnnouncement,
        "delete_announcement": deleteAnnouncement,
        "view_announcement": viewAnnouncement,
      };
}

class Answer {
  final bool addAnswer;
  final bool changeAnswer;
  final bool deleteAnswer;
  final bool viewAnswer;

  Answer({
    required this.addAnswer,
    required this.changeAnswer,
    required this.deleteAnswer,
    required this.viewAnswer,
  });

  Answer copyWith({
    bool? addAnswer,
    bool? changeAnswer,
    bool? deleteAnswer,
    bool? viewAnswer,
  }) =>
      Answer(
        addAnswer: addAnswer ?? this.addAnswer,
        changeAnswer: changeAnswer ?? this.changeAnswer,
        deleteAnswer: deleteAnswer ?? this.deleteAnswer,
        viewAnswer: viewAnswer ?? this.viewAnswer,
      );

  factory Answer.fromRawJson(String str) => Answer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Answer.fromJson(Map<String, dynamic> json) => Answer(
        addAnswer: json["add_answer"],
        changeAnswer: json["change_answer"],
        deleteAnswer: json["delete_answer"],
        viewAnswer: json["view_answer"],
      );

  Map<String, dynamic> toJson() => {
        "add_answer": addAnswer,
        "change_answer": changeAnswer,
        "delete_answer": deleteAnswer,
        "view_answer": viewAnswer,
      };
}

class Application {
  final bool addApplication;
  final bool changeApplication;
  final bool deleteApplication;
  final bool viewApplication;

  Application({
    required this.addApplication,
    required this.changeApplication,
    required this.deleteApplication,
    required this.viewApplication,
  });

  Application copyWith({
    bool? addApplication,
    bool? changeApplication,
    bool? deleteApplication,
    bool? viewApplication,
  }) =>
      Application(
        addApplication: addApplication ?? this.addApplication,
        changeApplication: changeApplication ?? this.changeApplication,
        deleteApplication: deleteApplication ?? this.deleteApplication,
        viewApplication: viewApplication ?? this.viewApplication,
      );

  factory Application.fromRawJson(String str) =>
      Application.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Application.fromJson(Map<String, dynamic> json) => Application(
        addApplication: json["add_application"],
        changeApplication: json["change_application"],
        deleteApplication: json["delete_application"],
        viewApplication: json["view_application"],
      );

  Map<String, dynamic> toJson() => {
        "add_application": addApplication,
        "change_application": changeApplication,
        "delete_application": deleteApplication,
        "view_application": viewApplication,
      };
}

class Assesment {
  final bool addAssesment;
  final bool changeAssesment;
  final bool deleteAssesment;
  final bool viewAssesment;

  Assesment({
    required this.addAssesment,
    required this.changeAssesment,
    required this.deleteAssesment,
    required this.viewAssesment,
  });

  Assesment copyWith({
    bool? addAssesment,
    bool? changeAssesment,
    bool? deleteAssesment,
    bool? viewAssesment,
  }) =>
      Assesment(
        addAssesment: addAssesment ?? this.addAssesment,
        changeAssesment: changeAssesment ?? this.changeAssesment,
        deleteAssesment: deleteAssesment ?? this.deleteAssesment,
        viewAssesment: viewAssesment ?? this.viewAssesment,
      );

  factory Assesment.fromRawJson(String str) =>
      Assesment.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Assesment.fromJson(Map<String, dynamic> json) => Assesment(
        addAssesment: json["add_assesment"],
        changeAssesment: json["change_assesment"],
        deleteAssesment: json["delete_assesment"],
        viewAssesment: json["view_assesment"],
      );

  Map<String, dynamic> toJson() => {
        "add_assesment": addAssesment,
        "change_assesment": changeAssesment,
        "delete_assesment": deleteAssesment,
        "view_assesment": viewAssesment,
      };
}

class Assessmentanswer {
  final bool addAssessmentanswer;
  final bool changeAssessmentanswer;
  final bool deleteAssessmentanswer;
  final bool viewAssessmentanswer;

  Assessmentanswer({
    required this.addAssessmentanswer,
    required this.changeAssessmentanswer,
    required this.deleteAssessmentanswer,
    required this.viewAssessmentanswer,
  });

  Assessmentanswer copyWith({
    bool? addAssessmentanswer,
    bool? changeAssessmentanswer,
    bool? deleteAssessmentanswer,
    bool? viewAssessmentanswer,
  }) =>
      Assessmentanswer(
        addAssessmentanswer: addAssessmentanswer ?? this.addAssessmentanswer,
        changeAssessmentanswer:
            changeAssessmentanswer ?? this.changeAssessmentanswer,
        deleteAssessmentanswer:
            deleteAssessmentanswer ?? this.deleteAssessmentanswer,
        viewAssessmentanswer: viewAssessmentanswer ?? this.viewAssessmentanswer,
      );

  factory Assessmentanswer.fromRawJson(String str) =>
      Assessmentanswer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Assessmentanswer.fromJson(Map<String, dynamic> json) =>
      Assessmentanswer(
        addAssessmentanswer: json["add_assessmentanswer"],
        changeAssessmentanswer: json["change_assessmentanswer"],
        deleteAssessmentanswer: json["delete_assessmentanswer"],
        viewAssessmentanswer: json["view_assessmentanswer"],
      );

  Map<String, dynamic> toJson() => {
        "add_assessmentanswer": addAssessmentanswer,
        "change_assessmentanswer": changeAssessmentanswer,
        "delete_assessmentanswer": deleteAssessmentanswer,
        "view_assessmentanswer": viewAssessmentanswer,
      };
}

class Assessmentfeedback {
  final bool addAssessmentfeedback;
  final bool changeAssessmentfeedback;
  final bool deleteAssessmentfeedback;
  final bool viewAssessmentfeedback;

  Assessmentfeedback({
    required this.addAssessmentfeedback,
    required this.changeAssessmentfeedback,
    required this.deleteAssessmentfeedback,
    required this.viewAssessmentfeedback,
  });

  Assessmentfeedback copyWith({
    bool? addAssessmentfeedback,
    bool? changeAssessmentfeedback,
    bool? deleteAssessmentfeedback,
    bool? viewAssessmentfeedback,
  }) =>
      Assessmentfeedback(
        addAssessmentfeedback:
            addAssessmentfeedback ?? this.addAssessmentfeedback,
        changeAssessmentfeedback:
            changeAssessmentfeedback ?? this.changeAssessmentfeedback,
        deleteAssessmentfeedback:
            deleteAssessmentfeedback ?? this.deleteAssessmentfeedback,
        viewAssessmentfeedback:
            viewAssessmentfeedback ?? this.viewAssessmentfeedback,
      );

  factory Assessmentfeedback.fromRawJson(String str) =>
      Assessmentfeedback.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Assessmentfeedback.fromJson(Map<String, dynamic> json) =>
      Assessmentfeedback(
        addAssessmentfeedback: json["add_assessmentfeedback"],
        changeAssessmentfeedback: json["change_assessmentfeedback"],
        deleteAssessmentfeedback: json["delete_assessmentfeedback"],
        viewAssessmentfeedback: json["view_assessmentfeedback"],
      );

  Map<String, dynamic> toJson() => {
        "add_assessmentfeedback": addAssessmentfeedback,
        "change_assessmentfeedback": changeAssessmentfeedback,
        "delete_assessmentfeedback": deleteAssessmentfeedback,
        "view_assessmentfeedback": viewAssessmentfeedback,
      };
}

class Assessmentfiles {
  final bool addAssessmentfiles;
  final bool changeAssessmentfiles;
  final bool deleteAssessmentfiles;
  final bool viewAssessmentfiles;

  Assessmentfiles({
    required this.addAssessmentfiles,
    required this.changeAssessmentfiles,
    required this.deleteAssessmentfiles,
    required this.viewAssessmentfiles,
  });

  Assessmentfiles copyWith({
    bool? addAssessmentfiles,
    bool? changeAssessmentfiles,
    bool? deleteAssessmentfiles,
    bool? viewAssessmentfiles,
  }) =>
      Assessmentfiles(
        addAssessmentfiles: addAssessmentfiles ?? this.addAssessmentfiles,
        changeAssessmentfiles:
            changeAssessmentfiles ?? this.changeAssessmentfiles,
        deleteAssessmentfiles:
            deleteAssessmentfiles ?? this.deleteAssessmentfiles,
        viewAssessmentfiles: viewAssessmentfiles ?? this.viewAssessmentfiles,
      );

  factory Assessmentfiles.fromRawJson(String str) =>
      Assessmentfiles.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Assessmentfiles.fromJson(Map<String, dynamic> json) =>
      Assessmentfiles(
        addAssessmentfiles: json["add_assessmentfiles"],
        changeAssessmentfiles: json["change_assessmentfiles"],
        deleteAssessmentfiles: json["delete_assessmentfiles"],
        viewAssessmentfiles: json["view_assessmentfiles"],
      );

  Map<String, dynamic> toJson() => {
        "add_assessmentfiles": addAssessmentfiles,
        "change_assessmentfiles": changeAssessmentfiles,
        "delete_assessmentfiles": deleteAssessmentfiles,
        "view_assessmentfiles": viewAssessmentfiles,
      };
}

class Assessmentquestion {
  final bool addAssessmentquestion;
  final bool changeAssessmentquestion;
  final bool deleteAssessmentquestion;
  final bool viewAssessmentquestion;

  Assessmentquestion({
    required this.addAssessmentquestion,
    required this.changeAssessmentquestion,
    required this.deleteAssessmentquestion,
    required this.viewAssessmentquestion,
  });

  Assessmentquestion copyWith({
    bool? addAssessmentquestion,
    bool? changeAssessmentquestion,
    bool? deleteAssessmentquestion,
    bool? viewAssessmentquestion,
  }) =>
      Assessmentquestion(
        addAssessmentquestion:
            addAssessmentquestion ?? this.addAssessmentquestion,
        changeAssessmentquestion:
            changeAssessmentquestion ?? this.changeAssessmentquestion,
        deleteAssessmentquestion:
            deleteAssessmentquestion ?? this.deleteAssessmentquestion,
        viewAssessmentquestion:
            viewAssessmentquestion ?? this.viewAssessmentquestion,
      );

  factory Assessmentquestion.fromRawJson(String str) =>
      Assessmentquestion.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Assessmentquestion.fromJson(Map<String, dynamic> json) =>
      Assessmentquestion(
        addAssessmentquestion: json["add_assessmentquestion"],
        changeAssessmentquestion: json["change_assessmentquestion"],
        deleteAssessmentquestion: json["delete_assessmentquestion"],
        viewAssessmentquestion: json["view_assessmentquestion"],
      );

  Map<String, dynamic> toJson() => {
        "add_assessmentquestion": addAssessmentquestion,
        "change_assessmentquestion": changeAssessmentquestion,
        "delete_assessmentquestion": deleteAssessmentquestion,
        "view_assessmentquestion": viewAssessmentquestion,
      };
}

class Association {
  final bool addAssociation;
  final bool changeAssociation;
  final bool deleteAssociation;
  final bool viewAssociation;

  Association({
    required this.addAssociation,
    required this.changeAssociation,
    required this.deleteAssociation,
    required this.viewAssociation,
  });

  Association copyWith({
    bool? addAssociation,
    bool? changeAssociation,
    bool? deleteAssociation,
    bool? viewAssociation,
  }) =>
      Association(
        addAssociation: addAssociation ?? this.addAssociation,
        changeAssociation: changeAssociation ?? this.changeAssociation,
        deleteAssociation: deleteAssociation ?? this.deleteAssociation,
        viewAssociation: viewAssociation ?? this.viewAssociation,
      );

  factory Association.fromRawJson(String str) =>
      Association.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Association.fromJson(Map<String, dynamic> json) => Association(
        addAssociation: json["add_association"],
        changeAssociation: json["change_association"],
        deleteAssociation: json["delete_association"],
        viewAssociation: json["view_association"],
      );

  Map<String, dynamic> toJson() => {
        "add_association": addAssociation,
        "change_association": changeAssociation,
        "delete_association": deleteAssociation,
        "view_association": viewAssociation,
      };
}

class Attendance {
  final bool addAttendance;
  final bool changeAttendance;
  final bool deleteAttendance;
  final bool viewAttendance;

  Attendance({
    required this.addAttendance,
    required this.changeAttendance,
    required this.deleteAttendance,
    required this.viewAttendance,
  });

  Attendance copyWith({
    bool? addAttendance,
    bool? changeAttendance,
    bool? deleteAttendance,
    bool? viewAttendance,
  }) =>
      Attendance(
        addAttendance: addAttendance ?? this.addAttendance,
        changeAttendance: changeAttendance ?? this.changeAttendance,
        deleteAttendance: deleteAttendance ?? this.deleteAttendance,
        viewAttendance: viewAttendance ?? this.viewAttendance,
      );

  factory Attendance.fromRawJson(String str) =>
      Attendance.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Attendance.fromJson(Map<String, dynamic> json) => Attendance(
        addAttendance: json["add_attendance"],
        changeAttendance: json["change_attendance"],
        deleteAttendance: json["delete_attendance"],
        viewAttendance: json["view_attendance"],
      );

  Map<String, dynamic> toJson() => {
        "add_attendance": addAttendance,
        "change_attendance": changeAttendance,
        "delete_attendance": deleteAttendance,
        "view_attendance": viewAttendance,
      };
}

class Balanceledger {
  final bool addBalanceledger;
  final bool changeBalanceledger;
  final bool deleteBalanceledger;
  final bool viewBalanceledger;

  Balanceledger({
    required this.addBalanceledger,
    required this.changeBalanceledger,
    required this.deleteBalanceledger,
    required this.viewBalanceledger,
  });

  Balanceledger copyWith({
    bool? addBalanceledger,
    bool? changeBalanceledger,
    bool? deleteBalanceledger,
    bool? viewBalanceledger,
  }) =>
      Balanceledger(
        addBalanceledger: addBalanceledger ?? this.addBalanceledger,
        changeBalanceledger: changeBalanceledger ?? this.changeBalanceledger,
        deleteBalanceledger: deleteBalanceledger ?? this.deleteBalanceledger,
        viewBalanceledger: viewBalanceledger ?? this.viewBalanceledger,
      );

  factory Balanceledger.fromRawJson(String str) =>
      Balanceledger.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Balanceledger.fromJson(Map<String, dynamic> json) => Balanceledger(
        addBalanceledger: json["add_balanceledger"],
        changeBalanceledger: json["change_balanceledger"],
        deleteBalanceledger: json["delete_balanceledger"],
        viewBalanceledger: json["view_balanceledger"],
      );

  Map<String, dynamic> toJson() => {
        "add_balanceledger": addBalanceledger,
        "change_balanceledger": changeBalanceledger,
        "delete_balanceledger": deleteBalanceledger,
        "view_balanceledger": viewBalanceledger,
      };
}

class Balancesource {
  final bool addBalancesource;
  final bool changeBalancesource;
  final bool deleteBalancesource;
  final bool viewBalancesource;

  Balancesource({
    required this.addBalancesource,
    required this.changeBalancesource,
    required this.deleteBalancesource,
    required this.viewBalancesource,
  });

  Balancesource copyWith({
    bool? addBalancesource,
    bool? changeBalancesource,
    bool? deleteBalancesource,
    bool? viewBalancesource,
  }) =>
      Balancesource(
        addBalancesource: addBalancesource ?? this.addBalancesource,
        changeBalancesource: changeBalancesource ?? this.changeBalancesource,
        deleteBalancesource: deleteBalancesource ?? this.deleteBalancesource,
        viewBalancesource: viewBalancesource ?? this.viewBalancesource,
      );

  factory Balancesource.fromRawJson(String str) =>
      Balancesource.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Balancesource.fromJson(Map<String, dynamic> json) => Balancesource(
        addBalancesource: json["add_balancesource"],
        changeBalancesource: json["change_balancesource"],
        deleteBalancesource: json["delete_balancesource"],
        viewBalancesource: json["view_balancesource"],
      );

  Map<String, dynamic> toJson() => {
        "add_balancesource": addBalancesource,
        "change_balancesource": changeBalancesource,
        "delete_balancesource": deleteBalancesource,
        "view_balancesource": viewBalancesource,
      };
}

class Blog {
  final bool addBlog;
  final bool changeBlog;
  final bool deleteBlog;
  final bool viewBlog;

  Blog({
    required this.addBlog,
    required this.changeBlog,
    required this.deleteBlog,
    required this.viewBlog,
  });

  Blog copyWith({
    bool? addBlog,
    bool? changeBlog,
    bool? deleteBlog,
    bool? viewBlog,
  }) =>
      Blog(
        addBlog: addBlog ?? this.addBlog,
        changeBlog: changeBlog ?? this.changeBlog,
        deleteBlog: deleteBlog ?? this.deleteBlog,
        viewBlog: viewBlog ?? this.viewBlog,
      );

  factory Blog.fromRawJson(String str) => Blog.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Blog.fromJson(Map<String, dynamic> json) => Blog(
        addBlog: json["add_blog"],
        changeBlog: json["change_blog"],
        deleteBlog: json["delete_blog"],
        viewBlog: json["view_blog"],
      );

  Map<String, dynamic> toJson() => {
        "add_blog": addBlog,
        "change_blog": changeBlog,
        "delete_blog": deleteBlog,
        "view_blog": viewBlog,
      };
}

class Blogcategory {
  final bool addBlogcategory;
  final bool changeBlogcategory;
  final bool deleteBlogcategory;
  final bool viewBlogcategory;

  Blogcategory({
    required this.addBlogcategory,
    required this.changeBlogcategory,
    required this.deleteBlogcategory,
    required this.viewBlogcategory,
  });

  Blogcategory copyWith({
    bool? addBlogcategory,
    bool? changeBlogcategory,
    bool? deleteBlogcategory,
    bool? viewBlogcategory,
  }) =>
      Blogcategory(
        addBlogcategory: addBlogcategory ?? this.addBlogcategory,
        changeBlogcategory: changeBlogcategory ?? this.changeBlogcategory,
        deleteBlogcategory: deleteBlogcategory ?? this.deleteBlogcategory,
        viewBlogcategory: viewBlogcategory ?? this.viewBlogcategory,
      );

  factory Blogcategory.fromRawJson(String str) =>
      Blogcategory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Blogcategory.fromJson(Map<String, dynamic> json) => Blogcategory(
        addBlogcategory: json["add_blogcategory"],
        changeBlogcategory: json["change_blogcategory"],
        deleteBlogcategory: json["delete_blogcategory"],
        viewBlogcategory: json["view_blogcategory"],
      );

  Map<String, dynamic> toJson() => {
        "add_blogcategory": addBlogcategory,
        "change_blogcategory": changeBlogcategory,
        "delete_blogcategory": deleteBlogcategory,
        "view_blogcategory": viewBlogcategory,
      };
}

class Cart {
  final bool addCart;
  final bool changeCart;
  final bool deleteCart;
  final bool viewCart;

  Cart({
    required this.addCart,
    required this.changeCart,
    required this.deleteCart,
    required this.viewCart,
  });

  Cart copyWith({
    bool? addCart,
    bool? changeCart,
    bool? deleteCart,
    bool? viewCart,
  }) =>
      Cart(
        addCart: addCart ?? this.addCart,
        changeCart: changeCart ?? this.changeCart,
        deleteCart: deleteCart ?? this.deleteCart,
        viewCart: viewCart ?? this.viewCart,
      );

  factory Cart.fromRawJson(String str) => Cart.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Cart.fromJson(Map<String, dynamic> json) => Cart(
        addCart: json["add_cart"],
        changeCart: json["change_cart"],
        deleteCart: json["delete_cart"],
        viewCart: json["view_cart"],
      );

  Map<String, dynamic> toJson() => {
        "add_cart": addCart,
        "change_cart": changeCart,
        "delete_cart": deleteCart,
        "view_cart": viewCart,
      };
}

class Categorynote {
  final bool addCategorynote;
  final bool changeCategorynote;
  final bool deleteCategorynote;
  final bool viewCategorynote;

  Categorynote({
    required this.addCategorynote,
    required this.changeCategorynote,
    required this.deleteCategorynote,
    required this.viewCategorynote,
  });

  Categorynote copyWith({
    bool? addCategorynote,
    bool? changeCategorynote,
    bool? deleteCategorynote,
    bool? viewCategorynote,
  }) =>
      Categorynote(
        addCategorynote: addCategorynote ?? this.addCategorynote,
        changeCategorynote: changeCategorynote ?? this.changeCategorynote,
        deleteCategorynote: deleteCategorynote ?? this.deleteCategorynote,
        viewCategorynote: viewCategorynote ?? this.viewCategorynote,
      );

  factory Categorynote.fromRawJson(String str) =>
      Categorynote.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Categorynote.fromJson(Map<String, dynamic> json) => Categorynote(
        addCategorynote: json["add_categorynote"],
        changeCategorynote: json["change_categorynote"],
        deleteCategorynote: json["delete_categorynote"],
        viewCategorynote: json["view_categorynote"],
      );

  Map<String, dynamic> toJson() => {
        "add_categorynote": addCategorynote,
        "change_categorynote": changeCategorynote,
        "delete_categorynote": deleteCategorynote,
        "view_categorynote": viewCategorynote,
      };
}

class Certificate {
  final bool addCertificate;
  final bool changeCertificate;
  final bool deleteCertificate;
  final bool viewCertificate;

  Certificate({
    required this.addCertificate,
    required this.changeCertificate,
    required this.deleteCertificate,
    required this.viewCertificate,
  });

  Certificate copyWith({
    bool? addCertificate,
    bool? changeCertificate,
    bool? deleteCertificate,
    bool? viewCertificate,
  }) =>
      Certificate(
        addCertificate: addCertificate ?? this.addCertificate,
        changeCertificate: changeCertificate ?? this.changeCertificate,
        deleteCertificate: deleteCertificate ?? this.deleteCertificate,
        viewCertificate: viewCertificate ?? this.viewCertificate,
      );

  factory Certificate.fromRawJson(String str) =>
      Certificate.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Certificate.fromJson(Map<String, dynamic> json) => Certificate(
        addCertificate: json["add_certificate"],
        changeCertificate: json["change_certificate"],
        deleteCertificate: json["delete_certificate"],
        viewCertificate: json["view_certificate"],
      );

  Map<String, dynamic> toJson() => {
        "add_certificate": addCertificate,
        "change_certificate": changeCertificate,
        "delete_certificate": deleteCertificate,
        "view_certificate": viewCertificate,
      };
}

class Chapter {
  final bool addChapter;
  final bool changeChapter;
  final bool deleteChapter;
  final bool viewChapter;

  Chapter({
    required this.addChapter,
    required this.changeChapter,
    required this.deleteChapter,
    required this.viewChapter,
  });

  Chapter copyWith({
    bool? addChapter,
    bool? changeChapter,
    bool? deleteChapter,
    bool? viewChapter,
  }) =>
      Chapter(
        addChapter: addChapter ?? this.addChapter,
        changeChapter: changeChapter ?? this.changeChapter,
        deleteChapter: deleteChapter ?? this.deleteChapter,
        viewChapter: viewChapter ?? this.viewChapter,
      );

  factory Chapter.fromRawJson(String str) => Chapter.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Chapter.fromJson(Map<String, dynamic> json) => Chapter(
        addChapter: json["add_chapter"],
        changeChapter: json["change_chapter"],
        deleteChapter: json["delete_chapter"],
        viewChapter: json["view_chapter"],
      );

  Map<String, dynamic> toJson() => {
        "add_chapter": addChapter,
        "change_chapter": changeChapter,
        "delete_chapter": deleteChapter,
        "view_chapter": viewChapter,
      };
}

class Chapternote {
  final bool addChapternote;
  final bool changeChapternote;
  final bool deleteChapternote;
  final bool viewChapternote;

  Chapternote({
    required this.addChapternote,
    required this.changeChapternote,
    required this.deleteChapternote,
    required this.viewChapternote,
  });

  Chapternote copyWith({
    bool? addChapternote,
    bool? changeChapternote,
    bool? deleteChapternote,
    bool? viewChapternote,
  }) =>
      Chapternote(
        addChapternote: addChapternote ?? this.addChapternote,
        changeChapternote: changeChapternote ?? this.changeChapternote,
        deleteChapternote: deleteChapternote ?? this.deleteChapternote,
        viewChapternote: viewChapternote ?? this.viewChapternote,
      );

  factory Chapternote.fromRawJson(String str) =>
      Chapternote.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Chapternote.fromJson(Map<String, dynamic> json) => Chapternote(
        addChapternote: json["add_chapternote"],
        changeChapternote: json["change_chapternote"],
        deleteChapternote: json["delete_chapternote"],
        viewChapternote: json["view_chapternote"],
      );

  Map<String, dynamic> toJson() => {
        "add_chapternote": addChapternote,
        "change_chapternote": changeChapternote,
        "delete_chapternote": deleteChapternote,
        "view_chapternote": viewChapternote,
      };
}

class Chatmessage {
  final bool addChatmessage;
  final bool changeChatmessage;
  final bool deleteChatmessage;
  final bool viewChatmessage;

  Chatmessage({
    required this.addChatmessage,
    required this.changeChatmessage,
    required this.deleteChatmessage,
    required this.viewChatmessage,
  });

  Chatmessage copyWith({
    bool? addChatmessage,
    bool? changeChatmessage,
    bool? deleteChatmessage,
    bool? viewChatmessage,
  }) =>
      Chatmessage(
        addChatmessage: addChatmessage ?? this.addChatmessage,
        changeChatmessage: changeChatmessage ?? this.changeChatmessage,
        deleteChatmessage: deleteChatmessage ?? this.deleteChatmessage,
        viewChatmessage: viewChatmessage ?? this.viewChatmessage,
      );

  factory Chatmessage.fromRawJson(String str) =>
      Chatmessage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Chatmessage.fromJson(Map<String, dynamic> json) => Chatmessage(
        addChatmessage: json["add_chatmessage"],
        changeChatmessage: json["change_chatmessage"],
        deleteChatmessage: json["delete_chatmessage"],
        viewChatmessage: json["view_chatmessage"],
      );

  Map<String, dynamic> toJson() => {
        "add_chatmessage": addChatmessage,
        "change_chatmessage": changeChatmessage,
        "delete_chatmessage": deleteChatmessage,
        "view_chatmessage": viewChatmessage,
      };
}

class Clientnote {
  final bool addClientnote;
  final bool changeClientnote;
  final bool deleteClientnote;
  final bool viewClientnote;

  Clientnote({
    required this.addClientnote,
    required this.changeClientnote,
    required this.deleteClientnote,
    required this.viewClientnote,
  });

  Clientnote copyWith({
    bool? addClientnote,
    bool? changeClientnote,
    bool? deleteClientnote,
    bool? viewClientnote,
  }) =>
      Clientnote(
        addClientnote: addClientnote ?? this.addClientnote,
        changeClientnote: changeClientnote ?? this.changeClientnote,
        deleteClientnote: deleteClientnote ?? this.deleteClientnote,
        viewClientnote: viewClientnote ?? this.viewClientnote,
      );

  factory Clientnote.fromRawJson(String str) =>
      Clientnote.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Clientnote.fromJson(Map<String, dynamic> json) => Clientnote(
        addClientnote: json["add_clientnote"],
        changeClientnote: json["change_clientnote"],
        deleteClientnote: json["delete_clientnote"],
        viewClientnote: json["view_clientnote"],
      );

  Map<String, dynamic> toJson() => {
        "add_clientnote": addClientnote,
        "change_clientnote": changeClientnote,
        "delete_clientnote": deleteClientnote,
        "view_clientnote": viewClientnote,
      };
}

class Clockedschedule {
  final bool addClockedschedule;
  final bool changeClockedschedule;
  final bool deleteClockedschedule;
  final bool viewClockedschedule;

  Clockedschedule({
    required this.addClockedschedule,
    required this.changeClockedschedule,
    required this.deleteClockedschedule,
    required this.viewClockedschedule,
  });

  Clockedschedule copyWith({
    bool? addClockedschedule,
    bool? changeClockedschedule,
    bool? deleteClockedschedule,
    bool? viewClockedschedule,
  }) =>
      Clockedschedule(
        addClockedschedule: addClockedschedule ?? this.addClockedschedule,
        changeClockedschedule:
            changeClockedschedule ?? this.changeClockedschedule,
        deleteClockedschedule:
            deleteClockedschedule ?? this.deleteClockedschedule,
        viewClockedschedule: viewClockedschedule ?? this.viewClockedschedule,
      );

  factory Clockedschedule.fromRawJson(String str) =>
      Clockedschedule.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Clockedschedule.fromJson(Map<String, dynamic> json) =>
      Clockedschedule(
        addClockedschedule: json["add_clockedschedule"],
        changeClockedschedule: json["change_clockedschedule"],
        deleteClockedschedule: json["delete_clockedschedule"],
        viewClockedschedule: json["view_clockedschedule"],
      );

  Map<String, dynamic> toJson() => {
        "add_clockedschedule": addClockedschedule,
        "change_clockedschedule": changeClockedschedule,
        "delete_clockedschedule": deleteClockedschedule,
        "view_clockedschedule": viewClockedschedule,
      };
}

class Code {
  final bool addCode;
  final bool changeCode;
  final bool deleteCode;
  final bool viewCode;

  Code({
    required this.addCode,
    required this.changeCode,
    required this.deleteCode,
    required this.viewCode,
  });

  Code copyWith({
    bool? addCode,
    bool? changeCode,
    bool? deleteCode,
    bool? viewCode,
  }) =>
      Code(
        addCode: addCode ?? this.addCode,
        changeCode: changeCode ?? this.changeCode,
        deleteCode: deleteCode ?? this.deleteCode,
        viewCode: viewCode ?? this.viewCode,
      );

  factory Code.fromRawJson(String str) => Code.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Code.fromJson(Map<String, dynamic> json) => Code(
        addCode: json["add_code"],
        changeCode: json["change_code"],
        deleteCode: json["delete_code"],
        viewCode: json["view_code"],
      );

  Map<String, dynamic> toJson() => {
        "add_code": addCode,
        "change_code": changeCode,
        "delete_code": deleteCode,
        "view_code": viewCode,
      };
}

class College {
  final bool addCollege;
  final bool changeCollege;
  final bool deleteCollege;
  final bool viewCollege;

  College({
    required this.addCollege,
    required this.changeCollege,
    required this.deleteCollege,
    required this.viewCollege,
  });

  College copyWith({
    bool? addCollege,
    bool? changeCollege,
    bool? deleteCollege,
    bool? viewCollege,
  }) =>
      College(
        addCollege: addCollege ?? this.addCollege,
        changeCollege: changeCollege ?? this.changeCollege,
        deleteCollege: deleteCollege ?? this.deleteCollege,
        viewCollege: viewCollege ?? this.viewCollege,
      );

  factory College.fromRawJson(String str) => College.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory College.fromJson(Map<String, dynamic> json) => College(
        addCollege: json["add_college"],
        changeCollege: json["change_college"],
        deleteCollege: json["delete_college"],
        viewCollege: json["view_college"],
      );

  Map<String, dynamic> toJson() => {
        "add_college": addCollege,
        "change_college": changeCollege,
        "delete_college": deleteCollege,
        "view_college": viewCollege,
      };
}

class Collegeambasador {
  final bool addCollegeambasador;
  final bool changeCollegeambasador;
  final bool deleteCollegeambasador;
  final bool viewCollegeambasador;

  Collegeambasador({
    required this.addCollegeambasador,
    required this.changeCollegeambasador,
    required this.deleteCollegeambasador,
    required this.viewCollegeambasador,
  });

  Collegeambasador copyWith({
    bool? addCollegeambasador,
    bool? changeCollegeambasador,
    bool? deleteCollegeambasador,
    bool? viewCollegeambasador,
  }) =>
      Collegeambasador(
        addCollegeambasador: addCollegeambasador ?? this.addCollegeambasador,
        changeCollegeambasador:
            changeCollegeambasador ?? this.changeCollegeambasador,
        deleteCollegeambasador:
            deleteCollegeambasador ?? this.deleteCollegeambasador,
        viewCollegeambasador: viewCollegeambasador ?? this.viewCollegeambasador,
      );

  factory Collegeambasador.fromRawJson(String str) =>
      Collegeambasador.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Collegeambasador.fromJson(Map<String, dynamic> json) =>
      Collegeambasador(
        addCollegeambasador: json["add_collegeambasador"],
        changeCollegeambasador: json["change_collegeambasador"],
        deleteCollegeambasador: json["delete_collegeambasador"],
        viewCollegeambasador: json["view_collegeambasador"],
      );

  Map<String, dynamic> toJson() => {
        "add_collegeambasador": addCollegeambasador,
        "change_collegeambasador": changeCollegeambasador,
        "delete_collegeambasador": deleteCollegeambasador,
        "view_collegeambasador": viewCollegeambasador,
      };
}

class Comment {
  final bool addComment;
  final bool changeComment;
  final bool deleteComment;
  final bool viewComment;

  Comment({
    required this.addComment,
    required this.changeComment,
    required this.deleteComment,
    required this.viewComment,
  });

  Comment copyWith({
    bool? addComment,
    bool? changeComment,
    bool? deleteComment,
    bool? viewComment,
  }) =>
      Comment(
        addComment: addComment ?? this.addComment,
        changeComment: changeComment ?? this.changeComment,
        deleteComment: deleteComment ?? this.deleteComment,
        viewComment: viewComment ?? this.viewComment,
      );

  factory Comment.fromRawJson(String str) => Comment.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        addComment: json["add_comment"],
        changeComment: json["change_comment"],
        deleteComment: json["delete_comment"],
        viewComment: json["view_comment"],
      );

  Map<String, dynamic> toJson() => {
        "add_comment": addComment,
        "change_comment": changeComment,
        "delete_comment": deleteComment,
        "view_comment": viewComment,
      };
}

class Commentreply {
  final bool addCommentreply;
  final bool changeCommentreply;
  final bool deleteCommentreply;
  final bool viewCommentreply;

  Commentreply({
    required this.addCommentreply,
    required this.changeCommentreply,
    required this.deleteCommentreply,
    required this.viewCommentreply,
  });

  Commentreply copyWith({
    bool? addCommentreply,
    bool? changeCommentreply,
    bool? deleteCommentreply,
    bool? viewCommentreply,
  }) =>
      Commentreply(
        addCommentreply: addCommentreply ?? this.addCommentreply,
        changeCommentreply: changeCommentreply ?? this.changeCommentreply,
        deleteCommentreply: deleteCommentreply ?? this.deleteCommentreply,
        viewCommentreply: viewCommentreply ?? this.viewCommentreply,
      );

  factory Commentreply.fromRawJson(String str) =>
      Commentreply.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Commentreply.fromJson(Map<String, dynamic> json) => Commentreply(
        addCommentreply: json["add_commentreply"],
        changeCommentreply: json["change_commentreply"],
        deleteCommentreply: json["delete_commentreply"],
        viewCommentreply: json["view_commentreply"],
      );

  Map<String, dynamic> toJson() => {
        "add_commentreply": addCommentreply,
        "change_commentreply": changeCommentreply,
        "delete_commentreply": deleteCommentreply,
        "view_commentreply": viewCommentreply,
      };
}

class Commentreport {
  final bool addCommentreport;
  final bool changeCommentreport;
  final bool deleteCommentreport;
  final bool viewCommentreport;

  Commentreport({
    required this.addCommentreport,
    required this.changeCommentreport,
    required this.deleteCommentreport,
    required this.viewCommentreport,
  });

  Commentreport copyWith({
    bool? addCommentreport,
    bool? changeCommentreport,
    bool? deleteCommentreport,
    bool? viewCommentreport,
  }) =>
      Commentreport(
        addCommentreport: addCommentreport ?? this.addCommentreport,
        changeCommentreport: changeCommentreport ?? this.changeCommentreport,
        deleteCommentreport: deleteCommentreport ?? this.deleteCommentreport,
        viewCommentreport: viewCommentreport ?? this.viewCommentreport,
      );

  factory Commentreport.fromRawJson(String str) =>
      Commentreport.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Commentreport.fromJson(Map<String, dynamic> json) => Commentreport(
        addCommentreport: json["add_commentreport"],
        changeCommentreport: json["change_commentreport"],
        deleteCommentreport: json["delete_commentreport"],
        viewCommentreport: json["view_commentreport"],
      );

  Map<String, dynamic> toJson() => {
        "add_commentreport": addCommentreport,
        "change_commentreport": changeCommentreport,
        "delete_commentreport": deleteCommentreport,
        "view_commentreport": viewCommentreport,
      };
}

class Company {
  final bool addCompany;
  final bool changeCompany;
  final bool deleteCompany;
  final bool viewCompany;

  Company({
    required this.addCompany,
    required this.changeCompany,
    required this.deleteCompany,
    required this.viewCompany,
  });

  Company copyWith({
    bool? addCompany,
    bool? changeCompany,
    bool? deleteCompany,
    bool? viewCompany,
  }) =>
      Company(
        addCompany: addCompany ?? this.addCompany,
        changeCompany: changeCompany ?? this.changeCompany,
        deleteCompany: deleteCompany ?? this.deleteCompany,
        viewCompany: viewCompany ?? this.viewCompany,
      );

  factory Company.fromRawJson(String str) => Company.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        addCompany: json["add_company"],
        changeCompany: json["change_company"],
        deleteCompany: json["delete_company"],
        viewCompany: json["view_company"],
      );

  Map<String, dynamic> toJson() => {
        "add_company": addCompany,
        "change_company": changeCompany,
        "delete_company": deleteCompany,
        "view_company": viewCompany,
      };
}

class Contactus {
  final bool addContactus;
  final bool changeContactus;
  final bool deleteContactus;
  final bool viewContactus;

  Contactus({
    required this.addContactus,
    required this.changeContactus,
    required this.deleteContactus,
    required this.viewContactus,
  });

  Contactus copyWith({
    bool? addContactus,
    bool? changeContactus,
    bool? deleteContactus,
    bool? viewContactus,
  }) =>
      Contactus(
        addContactus: addContactus ?? this.addContactus,
        changeContactus: changeContactus ?? this.changeContactus,
        deleteContactus: deleteContactus ?? this.deleteContactus,
        viewContactus: viewContactus ?? this.viewContactus,
      );

  factory Contactus.fromRawJson(String str) =>
      Contactus.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Contactus.fromJson(Map<String, dynamic> json) => Contactus(
        addContactus: json["add_contactus"],
        changeContactus: json["change_contactus"],
        deleteContactus: json["delete_contactus"],
        viewContactus: json["view_contactus"],
      );

  Map<String, dynamic> toJson() => {
        "add_contactus": addContactus,
        "change_contactus": changeContactus,
        "delete_contactus": deleteContactus,
        "view_contactus": viewContactus,
      };
}

class Contactuscomment {
  final bool addContactuscomment;
  final bool changeContactuscomment;
  final bool deleteContactuscomment;
  final bool viewContactuscomment;

  Contactuscomment({
    required this.addContactuscomment,
    required this.changeContactuscomment,
    required this.deleteContactuscomment,
    required this.viewContactuscomment,
  });

  Contactuscomment copyWith({
    bool? addContactuscomment,
    bool? changeContactuscomment,
    bool? deleteContactuscomment,
    bool? viewContactuscomment,
  }) =>
      Contactuscomment(
        addContactuscomment: addContactuscomment ?? this.addContactuscomment,
        changeContactuscomment:
            changeContactuscomment ?? this.changeContactuscomment,
        deleteContactuscomment:
            deleteContactuscomment ?? this.deleteContactuscomment,
        viewContactuscomment: viewContactuscomment ?? this.viewContactuscomment,
      );

  factory Contactuscomment.fromRawJson(String str) =>
      Contactuscomment.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Contactuscomment.fromJson(Map<String, dynamic> json) =>
      Contactuscomment(
        addContactuscomment: json["add_contactuscomment"],
        changeContactuscomment: json["change_contactuscomment"],
        deleteContactuscomment: json["delete_contactuscomment"],
        viewContactuscomment: json["view_contactuscomment"],
      );

  Map<String, dynamic> toJson() => {
        "add_contactuscomment": addContactuscomment,
        "change_contactuscomment": changeContactuscomment,
        "delete_contactuscomment": deleteContactuscomment,
        "view_contactuscomment": viewContactuscomment,
      };
}

class Content {
  final bool addContent;
  final bool changeContent;
  final bool deleteContent;
  final bool viewContent;

  Content({
    required this.addContent,
    required this.changeContent,
    required this.deleteContent,
    required this.viewContent,
  });

  Content copyWith({
    bool? addContent,
    bool? changeContent,
    bool? deleteContent,
    bool? viewContent,
  }) =>
      Content(
        addContent: addContent ?? this.addContent,
        changeContent: changeContent ?? this.changeContent,
        deleteContent: deleteContent ?? this.deleteContent,
        viewContent: viewContent ?? this.viewContent,
      );

  factory Content.fromRawJson(String str) => Content.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        addContent: json["add_content"],
        changeContent: json["change_content"],
        deleteContent: json["delete_content"],
        viewContent: json["view_content"],
      );

  Map<String, dynamic> toJson() => {
        "add_content": addContent,
        "change_content": changeContent,
        "delete_content": deleteContent,
        "view_content": viewContent,
      };
}

class Contentfile {
  final bool addContentfile;
  final bool changeContentfile;
  final bool deleteContentfile;
  final bool viewContentfile;

  Contentfile({
    required this.addContentfile,
    required this.changeContentfile,
    required this.deleteContentfile,
    required this.viewContentfile,
  });

  Contentfile copyWith({
    bool? addContentfile,
    bool? changeContentfile,
    bool? deleteContentfile,
    bool? viewContentfile,
  }) =>
      Contentfile(
        addContentfile: addContentfile ?? this.addContentfile,
        changeContentfile: changeContentfile ?? this.changeContentfile,
        deleteContentfile: deleteContentfile ?? this.deleteContentfile,
        viewContentfile: viewContentfile ?? this.viewContentfile,
      );

  factory Contentfile.fromRawJson(String str) =>
      Contentfile.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Contentfile.fromJson(Map<String, dynamic> json) => Contentfile(
        addContentfile: json["add_contentfile"],
        changeContentfile: json["change_contentfile"],
        deleteContentfile: json["delete_contentfile"],
        viewContentfile: json["view_contentfile"],
      );

  Map<String, dynamic> toJson() => {
        "add_contentfile": addContentfile,
        "change_contentfile": changeContentfile,
        "delete_contentfile": deleteContentfile,
        "view_contentfile": viewContentfile,
      };
}

class Contentnote {
  final bool addContentnote;
  final bool changeContentnote;
  final bool deleteContentnote;
  final bool viewContentnote;

  Contentnote({
    required this.addContentnote,
    required this.changeContentnote,
    required this.deleteContentnote,
    required this.viewContentnote,
  });

  Contentnote copyWith({
    bool? addContentnote,
    bool? changeContentnote,
    bool? deleteContentnote,
    bool? viewContentnote,
  }) =>
      Contentnote(
        addContentnote: addContentnote ?? this.addContentnote,
        changeContentnote: changeContentnote ?? this.changeContentnote,
        deleteContentnote: deleteContentnote ?? this.deleteContentnote,
        viewContentnote: viewContentnote ?? this.viewContentnote,
      );

  factory Contentnote.fromRawJson(String str) =>
      Contentnote.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Contentnote.fromJson(Map<String, dynamic> json) => Contentnote(
        addContentnote: json["add_contentnote"],
        changeContentnote: json["change_contentnote"],
        deleteContentnote: json["delete_contentnote"],
        viewContentnote: json["view_contentnote"],
      );

  Map<String, dynamic> toJson() => {
        "add_contentnote": addContentnote,
        "change_contentnote": changeContentnote,
        "delete_contentnote": deleteContentnote,
        "view_contentnote": viewContentnote,
      };
}

class Contenttype {
  final bool addContenttype;
  final bool changeContenttype;
  final bool deleteContenttype;
  final bool viewContenttype;

  Contenttype({
    required this.addContenttype,
    required this.changeContenttype,
    required this.deleteContenttype,
    required this.viewContenttype,
  });

  Contenttype copyWith({
    bool? addContenttype,
    bool? changeContenttype,
    bool? deleteContenttype,
    bool? viewContenttype,
  }) =>
      Contenttype(
        addContenttype: addContenttype ?? this.addContenttype,
        changeContenttype: changeContenttype ?? this.changeContenttype,
        deleteContenttype: deleteContenttype ?? this.deleteContenttype,
        viewContenttype: viewContenttype ?? this.viewContenttype,
      );

  factory Contenttype.fromRawJson(String str) =>
      Contenttype.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Contenttype.fromJson(Map<String, dynamic> json) => Contenttype(
        addContenttype: json["add_contenttype"],
        changeContenttype: json["change_contenttype"],
        deleteContenttype: json["delete_contenttype"],
        viewContenttype: json["view_contenttype"],
      );

  Map<String, dynamic> toJson() => {
        "add_contenttype": addContenttype,
        "change_contenttype": changeContenttype,
        "delete_contenttype": deleteContenttype,
        "view_contenttype": viewContenttype,
      };
}

class Course {
  final bool addCourse;
  final bool changeCourse;
  final bool deleteCourse;
  final bool viewCourse;

  Course({
    required this.addCourse,
    required this.changeCourse,
    required this.deleteCourse,
    required this.viewCourse,
  });

  Course copyWith({
    bool? addCourse,
    bool? changeCourse,
    bool? deleteCourse,
    bool? viewCourse,
  }) =>
      Course(
        addCourse: addCourse ?? this.addCourse,
        changeCourse: changeCourse ?? this.changeCourse,
        deleteCourse: deleteCourse ?? this.deleteCourse,
        viewCourse: viewCourse ?? this.viewCourse,
      );

  factory Course.fromRawJson(String str) => Course.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Course.fromJson(Map<String, dynamic> json) => Course(
        addCourse: json["add_course"],
        changeCourse: json["change_course"],
        deleteCourse: json["delete_course"],
        viewCourse: json["view_course"],
      );

  Map<String, dynamic> toJson() => {
        "add_course": addCourse,
        "change_course": changeCourse,
        "delete_course": deleteCourse,
        "view_course": viewCourse,
      };
}

class Courseenroll {
  final bool addCourseenroll;
  final bool changeCourseenroll;
  final bool deleteCourseenroll;
  final bool viewCourseenroll;

  Courseenroll({
    required this.addCourseenroll,
    required this.changeCourseenroll,
    required this.deleteCourseenroll,
    required this.viewCourseenroll,
  });

  Courseenroll copyWith({
    bool? addCourseenroll,
    bool? changeCourseenroll,
    bool? deleteCourseenroll,
    bool? viewCourseenroll,
  }) =>
      Courseenroll(
        addCourseenroll: addCourseenroll ?? this.addCourseenroll,
        changeCourseenroll: changeCourseenroll ?? this.changeCourseenroll,
        deleteCourseenroll: deleteCourseenroll ?? this.deleteCourseenroll,
        viewCourseenroll: viewCourseenroll ?? this.viewCourseenroll,
      );

  factory Courseenroll.fromRawJson(String str) =>
      Courseenroll.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Courseenroll.fromJson(Map<String, dynamic> json) => Courseenroll(
        addCourseenroll: json["add_courseenroll"],
        changeCourseenroll: json["change_courseenroll"],
        deleteCourseenroll: json["delete_courseenroll"],
        viewCourseenroll: json["view_courseenroll"],
      );

  Map<String, dynamic> toJson() => {
        "add_courseenroll": addCourseenroll,
        "change_courseenroll": changeCourseenroll,
        "delete_courseenroll": deleteCourseenroll,
        "view_courseenroll": viewCourseenroll,
      };
}

class Coursefeedback {
  final bool addCoursefeedback;
  final bool changeCoursefeedback;
  final bool deleteCoursefeedback;
  final bool viewCoursefeedback;

  Coursefeedback({
    required this.addCoursefeedback,
    required this.changeCoursefeedback,
    required this.deleteCoursefeedback,
    required this.viewCoursefeedback,
  });

  Coursefeedback copyWith({
    bool? addCoursefeedback,
    bool? changeCoursefeedback,
    bool? deleteCoursefeedback,
    bool? viewCoursefeedback,
  }) =>
      Coursefeedback(
        addCoursefeedback: addCoursefeedback ?? this.addCoursefeedback,
        changeCoursefeedback: changeCoursefeedback ?? this.changeCoursefeedback,
        deleteCoursefeedback: deleteCoursefeedback ?? this.deleteCoursefeedback,
        viewCoursefeedback: viewCoursefeedback ?? this.viewCoursefeedback,
      );

  factory Coursefeedback.fromRawJson(String str) =>
      Coursefeedback.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Coursefeedback.fromJson(Map<String, dynamic> json) => Coursefeedback(
        addCoursefeedback: json["add_coursefeedback"],
        changeCoursefeedback: json["change_coursefeedback"],
        deleteCoursefeedback: json["delete_coursefeedback"],
        viewCoursefeedback: json["view_coursefeedback"],
      );

  Map<String, dynamic> toJson() => {
        "add_coursefeedback": addCoursefeedback,
        "change_coursefeedback": changeCoursefeedback,
        "delete_coursefeedback": deleteCoursefeedback,
        "view_coursefeedback": viewCoursefeedback,
      };
}

class Coursenote {
  final bool addCoursenote;
  final bool changeCoursenote;
  final bool deleteCoursenote;
  final bool viewCoursenote;

  Coursenote({
    required this.addCoursenote,
    required this.changeCoursenote,
    required this.deleteCoursenote,
    required this.viewCoursenote,
  });

  Coursenote copyWith({
    bool? addCoursenote,
    bool? changeCoursenote,
    bool? deleteCoursenote,
    bool? viewCoursenote,
  }) =>
      Coursenote(
        addCoursenote: addCoursenote ?? this.addCoursenote,
        changeCoursenote: changeCoursenote ?? this.changeCoursenote,
        deleteCoursenote: deleteCoursenote ?? this.deleteCoursenote,
        viewCoursenote: viewCoursenote ?? this.viewCoursenote,
      );

  factory Coursenote.fromRawJson(String str) =>
      Coursenote.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Coursenote.fromJson(Map<String, dynamic> json) => Coursenote(
        addCoursenote: json["add_coursenote"],
        changeCoursenote: json["change_coursenote"],
        deleteCoursenote: json["delete_coursenote"],
        viewCoursenote: json["view_coursenote"],
      );

  Map<String, dynamic> toJson() => {
        "add_coursenote": addCoursenote,
        "change_coursenote": changeCoursenote,
        "delete_coursenote": deleteCoursenote,
        "view_coursenote": viewCoursenote,
      };
}

class Courserequestcomment {
  final bool addCourserequestcomment;
  final bool changeCourserequestcomment;
  final bool deleteCourserequestcomment;
  final bool viewCourserequestcomment;

  Courserequestcomment({
    required this.addCourserequestcomment,
    required this.changeCourserequestcomment,
    required this.deleteCourserequestcomment,
    required this.viewCourserequestcomment,
  });

  Courserequestcomment copyWith({
    bool? addCourserequestcomment,
    bool? changeCourserequestcomment,
    bool? deleteCourserequestcomment,
    bool? viewCourserequestcomment,
  }) =>
      Courserequestcomment(
        addCourserequestcomment:
            addCourserequestcomment ?? this.addCourserequestcomment,
        changeCourserequestcomment:
            changeCourserequestcomment ?? this.changeCourserequestcomment,
        deleteCourserequestcomment:
            deleteCourserequestcomment ?? this.deleteCourserequestcomment,
        viewCourserequestcomment:
            viewCourserequestcomment ?? this.viewCourserequestcomment,
      );

  factory Courserequestcomment.fromRawJson(String str) =>
      Courserequestcomment.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Courserequestcomment.fromJson(Map<String, dynamic> json) =>
      Courserequestcomment(
        addCourserequestcomment: json["add_courserequestcomment"],
        changeCourserequestcomment: json["change_courserequestcomment"],
        deleteCourserequestcomment: json["delete_courserequestcomment"],
        viewCourserequestcomment: json["view_courserequestcomment"],
      );

  Map<String, dynamic> toJson() => {
        "add_courserequestcomment": addCourserequestcomment,
        "change_courserequestcomment": changeCourserequestcomment,
        "delete_courserequestcomment": deleteCourserequestcomment,
        "view_courserequestcomment": viewCourserequestcomment,
      };
}

class Coursetrial {
  final bool addCoursetrial;
  final bool changeCoursetrial;
  final bool deleteCoursetrial;
  final bool viewCoursetrial;

  Coursetrial({
    required this.addCoursetrial,
    required this.changeCoursetrial,
    required this.deleteCoursetrial,
    required this.viewCoursetrial,
  });

  Coursetrial copyWith({
    bool? addCoursetrial,
    bool? changeCoursetrial,
    bool? deleteCoursetrial,
    bool? viewCoursetrial,
  }) =>
      Coursetrial(
        addCoursetrial: addCoursetrial ?? this.addCoursetrial,
        changeCoursetrial: changeCoursetrial ?? this.changeCoursetrial,
        deleteCoursetrial: deleteCoursetrial ?? this.deleteCoursetrial,
        viewCoursetrial: viewCoursetrial ?? this.viewCoursetrial,
      );

  factory Coursetrial.fromRawJson(String str) =>
      Coursetrial.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Coursetrial.fromJson(Map<String, dynamic> json) => Coursetrial(
        addCoursetrial: json["add_coursetrial"],
        changeCoursetrial: json["change_coursetrial"],
        deleteCoursetrial: json["delete_coursetrial"],
        viewCoursetrial: json["view_coursetrial"],
      );

  Map<String, dynamic> toJson() => {
        "add_coursetrial": addCoursetrial,
        "change_coursetrial": changeCoursetrial,
        "delete_coursetrial": deleteCoursetrial,
        "view_coursetrial": viewCoursetrial,
      };
}

class Crontabschedule {
  final bool addCrontabschedule;
  final bool changeCrontabschedule;
  final bool deleteCrontabschedule;
  final bool viewCrontabschedule;

  Crontabschedule({
    required this.addCrontabschedule,
    required this.changeCrontabschedule,
    required this.deleteCrontabschedule,
    required this.viewCrontabschedule,
  });

  Crontabschedule copyWith({
    bool? addCrontabschedule,
    bool? changeCrontabschedule,
    bool? deleteCrontabschedule,
    bool? viewCrontabschedule,
  }) =>
      Crontabschedule(
        addCrontabschedule: addCrontabschedule ?? this.addCrontabschedule,
        changeCrontabschedule:
            changeCrontabschedule ?? this.changeCrontabschedule,
        deleteCrontabschedule:
            deleteCrontabschedule ?? this.deleteCrontabschedule,
        viewCrontabschedule: viewCrontabschedule ?? this.viewCrontabschedule,
      );

  factory Crontabschedule.fromRawJson(String str) =>
      Crontabschedule.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Crontabschedule.fromJson(Map<String, dynamic> json) =>
      Crontabschedule(
        addCrontabschedule: json["add_crontabschedule"],
        changeCrontabschedule: json["change_crontabschedule"],
        deleteCrontabschedule: json["delete_crontabschedule"],
        viewCrontabschedule: json["view_crontabschedule"],
      );

  Map<String, dynamic> toJson() => {
        "add_crontabschedule": addCrontabschedule,
        "change_crontabschedule": changeCrontabschedule,
        "delete_crontabschedule": deleteCrontabschedule,
        "view_crontabschedule": viewCrontabschedule,
      };
}

class Doubt {
  final bool addDoubt;
  final bool changeDoubt;
  final bool deleteDoubt;
  final bool viewDoubt;

  Doubt({
    required this.addDoubt,
    required this.changeDoubt,
    required this.deleteDoubt,
    required this.viewDoubt,
  });

  Doubt copyWith({
    bool? addDoubt,
    bool? changeDoubt,
    bool? deleteDoubt,
    bool? viewDoubt,
  }) =>
      Doubt(
        addDoubt: addDoubt ?? this.addDoubt,
        changeDoubt: changeDoubt ?? this.changeDoubt,
        deleteDoubt: deleteDoubt ?? this.deleteDoubt,
        viewDoubt: viewDoubt ?? this.viewDoubt,
      );

  factory Doubt.fromRawJson(String str) => Doubt.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Doubt.fromJson(Map<String, dynamic> json) => Doubt(
        addDoubt: json["add_doubt"],
        changeDoubt: json["change_doubt"],
        deleteDoubt: json["delete_doubt"],
        viewDoubt: json["view_doubt"],
      );

  Map<String, dynamic> toJson() => {
        "add_doubt": addDoubt,
        "change_doubt": changeDoubt,
        "delete_doubt": deleteDoubt,
        "view_doubt": viewDoubt,
      };
}

class Doubtreport {
  final bool addDoubtreport;
  final bool changeDoubtreport;
  final bool deleteDoubtreport;
  final bool viewDoubtreport;

  Doubtreport({
    required this.addDoubtreport,
    required this.changeDoubtreport,
    required this.deleteDoubtreport,
    required this.viewDoubtreport,
  });

  Doubtreport copyWith({
    bool? addDoubtreport,
    bool? changeDoubtreport,
    bool? deleteDoubtreport,
    bool? viewDoubtreport,
  }) =>
      Doubtreport(
        addDoubtreport: addDoubtreport ?? this.addDoubtreport,
        changeDoubtreport: changeDoubtreport ?? this.changeDoubtreport,
        deleteDoubtreport: deleteDoubtreport ?? this.deleteDoubtreport,
        viewDoubtreport: viewDoubtreport ?? this.viewDoubtreport,
      );

  factory Doubtreport.fromRawJson(String str) =>
      Doubtreport.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Doubtreport.fromJson(Map<String, dynamic> json) => Doubtreport(
        addDoubtreport: json["add_doubtreport"],
        changeDoubtreport: json["change_doubtreport"],
        deleteDoubtreport: json["delete_doubtreport"],
        viewDoubtreport: json["view_doubtreport"],
      );

  Map<String, dynamic> toJson() => {
        "add_doubtreport": addDoubtreport,
        "change_doubtreport": changeDoubtreport,
        "delete_doubtreport": deleteDoubtreport,
        "view_doubtreport": viewDoubtreport,
      };
}

class Doubttopic {
  final bool addDoubttopic;
  final bool changeDoubttopic;
  final bool deleteDoubttopic;
  final bool viewDoubttopic;

  Doubttopic({
    required this.addDoubttopic,
    required this.changeDoubttopic,
    required this.deleteDoubttopic,
    required this.viewDoubttopic,
  });

  Doubttopic copyWith({
    bool? addDoubttopic,
    bool? changeDoubttopic,
    bool? deleteDoubttopic,
    bool? viewDoubttopic,
  }) =>
      Doubttopic(
        addDoubttopic: addDoubttopic ?? this.addDoubttopic,
        changeDoubttopic: changeDoubttopic ?? this.changeDoubttopic,
        deleteDoubttopic: deleteDoubttopic ?? this.deleteDoubttopic,
        viewDoubttopic: viewDoubttopic ?? this.viewDoubttopic,
      );

  factory Doubttopic.fromRawJson(String str) =>
      Doubttopic.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Doubttopic.fromJson(Map<String, dynamic> json) => Doubttopic(
        addDoubttopic: json["add_doubttopic"],
        changeDoubttopic: json["change_doubttopic"],
        deleteDoubttopic: json["delete_doubttopic"],
        viewDoubttopic: json["view_doubttopic"],
      );

  Map<String, dynamic> toJson() => {
        "add_doubttopic": addDoubttopic,
        "change_doubttopic": changeDoubttopic,
        "delete_doubttopic": deleteDoubttopic,
        "view_doubttopic": viewDoubttopic,
      };
}

class Email {
  final bool addEmail;
  final bool changeEmail;
  final bool deleteEmail;
  final bool viewEmail;

  Email({
    required this.addEmail,
    required this.changeEmail,
    required this.deleteEmail,
    required this.viewEmail,
  });

  Email copyWith({
    bool? addEmail,
    bool? changeEmail,
    bool? deleteEmail,
    bool? viewEmail,
  }) =>
      Email(
        addEmail: addEmail ?? this.addEmail,
        changeEmail: changeEmail ?? this.changeEmail,
        deleteEmail: deleteEmail ?? this.deleteEmail,
        viewEmail: viewEmail ?? this.viewEmail,
      );

  factory Email.fromRawJson(String str) => Email.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Email.fromJson(Map<String, dynamic> json) => Email(
        addEmail: json["add_email"],
        changeEmail: json["change_email"],
        deleteEmail: json["delete_email"],
        viewEmail: json["view_email"],
      );

  Map<String, dynamic> toJson() => {
        "add_email": addEmail,
        "change_email": changeEmail,
        "delete_email": deleteEmail,
        "view_email": viewEmail,
      };
}

class Emailsubscriber {
  final bool addEmailsubscriber;
  final bool changeEmailsubscriber;
  final bool deleteEmailsubscriber;
  final bool viewEmailsubscriber;

  Emailsubscriber({
    required this.addEmailsubscriber,
    required this.changeEmailsubscriber,
    required this.deleteEmailsubscriber,
    required this.viewEmailsubscriber,
  });

  Emailsubscriber copyWith({
    bool? addEmailsubscriber,
    bool? changeEmailsubscriber,
    bool? deleteEmailsubscriber,
    bool? viewEmailsubscriber,
  }) =>
      Emailsubscriber(
        addEmailsubscriber: addEmailsubscriber ?? this.addEmailsubscriber,
        changeEmailsubscriber:
            changeEmailsubscriber ?? this.changeEmailsubscriber,
        deleteEmailsubscriber:
            deleteEmailsubscriber ?? this.deleteEmailsubscriber,
        viewEmailsubscriber: viewEmailsubscriber ?? this.viewEmailsubscriber,
      );

  factory Emailsubscriber.fromRawJson(String str) =>
      Emailsubscriber.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Emailsubscriber.fromJson(Map<String, dynamic> json) =>
      Emailsubscriber(
        addEmailsubscriber: json["add_emailsubscriber"],
        changeEmailsubscriber: json["change_emailsubscriber"],
        deleteEmailsubscriber: json["delete_emailsubscriber"],
        viewEmailsubscriber: json["view_emailsubscriber"],
      );

  Map<String, dynamic> toJson() => {
        "add_emailsubscriber": addEmailsubscriber,
        "change_emailsubscriber": changeEmailsubscriber,
        "delete_emailsubscriber": deleteEmailsubscriber,
        "view_emailsubscriber": viewEmailsubscriber,
      };
}

class Faq {
  final bool addFaq;
  final bool changeFaq;
  final bool deleteFaq;
  final bool viewFaq;

  Faq({
    required this.addFaq,
    required this.changeFaq,
    required this.deleteFaq,
    required this.viewFaq,
  });

  Faq copyWith({
    bool? addFaq,
    bool? changeFaq,
    bool? deleteFaq,
    bool? viewFaq,
  }) =>
      Faq(
        addFaq: addFaq ?? this.addFaq,
        changeFaq: changeFaq ?? this.changeFaq,
        deleteFaq: deleteFaq ?? this.deleteFaq,
        viewFaq: viewFaq ?? this.viewFaq,
      );

  factory Faq.fromRawJson(String str) => Faq.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Faq.fromJson(Map<String, dynamic> json) => Faq(
        addFaq: json["add_faq"],
        changeFaq: json["change_faq"],
        deleteFaq: json["delete_faq"],
        viewFaq: json["view_faq"],
      );

  Map<String, dynamic> toJson() => {
        "add_faq": addFaq,
        "change_faq": changeFaq,
        "delete_faq": deleteFaq,
        "view_faq": viewFaq,
      };
}

class Gallery {
  final bool addGallery;
  final bool changeGallery;
  final bool deleteGallery;
  final bool viewGallery;

  Gallery({
    required this.addGallery,
    required this.changeGallery,
    required this.deleteGallery,
    required this.viewGallery,
  });

  Gallery copyWith({
    bool? addGallery,
    bool? changeGallery,
    bool? deleteGallery,
    bool? viewGallery,
  }) =>
      Gallery(
        addGallery: addGallery ?? this.addGallery,
        changeGallery: changeGallery ?? this.changeGallery,
        deleteGallery: deleteGallery ?? this.deleteGallery,
        viewGallery: viewGallery ?? this.viewGallery,
      );

  factory Gallery.fromRawJson(String str) => Gallery.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Gallery.fromJson(Map<String, dynamic> json) => Gallery(
        addGallery: json["add_gallery"],
        changeGallery: json["change_gallery"],
        deleteGallery: json["delete_gallery"],
        viewGallery: json["view_gallery"],
      );

  Map<String, dynamic> toJson() => {
        "add_gallery": addGallery,
        "change_gallery": changeGallery,
        "delete_gallery": deleteGallery,
        "view_gallery": viewGallery,
      };
}

class Grant {
  final bool addGrant;
  final bool changeGrant;
  final bool deleteGrant;
  final bool viewGrant;

  Grant({
    required this.addGrant,
    required this.changeGrant,
    required this.deleteGrant,
    required this.viewGrant,
  });

  Grant copyWith({
    bool? addGrant,
    bool? changeGrant,
    bool? deleteGrant,
    bool? viewGrant,
  }) =>
      Grant(
        addGrant: addGrant ?? this.addGrant,
        changeGrant: changeGrant ?? this.changeGrant,
        deleteGrant: deleteGrant ?? this.deleteGrant,
        viewGrant: viewGrant ?? this.viewGrant,
      );

  factory Grant.fromRawJson(String str) => Grant.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Grant.fromJson(Map<String, dynamic> json) => Grant(
        addGrant: json["add_grant"],
        changeGrant: json["change_grant"],
        deleteGrant: json["delete_grant"],
        viewGrant: json["view_grant"],
      );

  Map<String, dynamic> toJson() => {
        "add_grant": addGrant,
        "change_grant": changeGrant,
        "delete_grant": deleteGrant,
        "view_grant": viewGrant,
      };
}

class Group {
  final bool addGroup;
  final bool changeGroup;
  final bool deleteGroup;
  final bool viewGroup;

  Group({
    required this.addGroup,
    required this.changeGroup,
    required this.deleteGroup,
    required this.viewGroup,
  });

  Group copyWith({
    bool? addGroup,
    bool? changeGroup,
    bool? deleteGroup,
    bool? viewGroup,
  }) =>
      Group(
        addGroup: addGroup ?? this.addGroup,
        changeGroup: changeGroup ?? this.changeGroup,
        deleteGroup: deleteGroup ?? this.deleteGroup,
        viewGroup: viewGroup ?? this.viewGroup,
      );

  factory Group.fromRawJson(String str) => Group.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Group.fromJson(Map<String, dynamic> json) => Group(
        addGroup: json["add_group"],
        changeGroup: json["change_group"],
        deleteGroup: json["delete_group"],
        viewGroup: json["view_group"],
      );

  Map<String, dynamic> toJson() => {
        "add_group": addGroup,
        "change_group": changeGroup,
        "delete_group": deleteGroup,
        "view_group": viewGroup,
      };
}

class Groupanswer {
  final bool addGroupanswer;
  final bool changeGroupanswer;
  final bool deleteGroupanswer;
  final bool viewGroupanswer;

  Groupanswer({
    required this.addGroupanswer,
    required this.changeGroupanswer,
    required this.deleteGroupanswer,
    required this.viewGroupanswer,
  });

  Groupanswer copyWith({
    bool? addGroupanswer,
    bool? changeGroupanswer,
    bool? deleteGroupanswer,
    bool? viewGroupanswer,
  }) =>
      Groupanswer(
        addGroupanswer: addGroupanswer ?? this.addGroupanswer,
        changeGroupanswer: changeGroupanswer ?? this.changeGroupanswer,
        deleteGroupanswer: deleteGroupanswer ?? this.deleteGroupanswer,
        viewGroupanswer: viewGroupanswer ?? this.viewGroupanswer,
      );

  factory Groupanswer.fromRawJson(String str) =>
      Groupanswer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Groupanswer.fromJson(Map<String, dynamic> json) => Groupanswer(
        addGroupanswer: json["add_groupanswer"],
        changeGroupanswer: json["change_groupanswer"],
        deleteGroupanswer: json["delete_groupanswer"],
        viewGroupanswer: json["view_groupanswer"],
      );

  Map<String, dynamic> toJson() => {
        "add_groupanswer": addGroupanswer,
        "change_groupanswer": changeGroupanswer,
        "delete_groupanswer": deleteGroupanswer,
        "view_groupanswer": viewGroupanswer,
      };
}

class Groupanswersheet {
  final bool addGroupanswersheet;
  final bool changeGroupanswersheet;
  final bool deleteGroupanswersheet;
  final bool viewGroupanswersheet;

  Groupanswersheet({
    required this.addGroupanswersheet,
    required this.changeGroupanswersheet,
    required this.deleteGroupanswersheet,
    required this.viewGroupanswersheet,
  });

  Groupanswersheet copyWith({
    bool? addGroupanswersheet,
    bool? changeGroupanswersheet,
    bool? deleteGroupanswersheet,
    bool? viewGroupanswersheet,
  }) =>
      Groupanswersheet(
        addGroupanswersheet: addGroupanswersheet ?? this.addGroupanswersheet,
        changeGroupanswersheet:
            changeGroupanswersheet ?? this.changeGroupanswersheet,
        deleteGroupanswersheet:
            deleteGroupanswersheet ?? this.deleteGroupanswersheet,
        viewGroupanswersheet: viewGroupanswersheet ?? this.viewGroupanswersheet,
      );

  factory Groupanswersheet.fromRawJson(String str) =>
      Groupanswersheet.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Groupanswersheet.fromJson(Map<String, dynamic> json) =>
      Groupanswersheet(
        addGroupanswersheet: json["add_groupanswersheet"],
        changeGroupanswersheet: json["change_groupanswersheet"],
        deleteGroupanswersheet: json["delete_groupanswersheet"],
        viewGroupanswersheet: json["view_groupanswersheet"],
      );

  Map<String, dynamic> toJson() => {
        "add_groupanswersheet": addGroupanswersheet,
        "change_groupanswersheet": changeGroupanswersheet,
        "delete_groupanswersheet": deleteGroupanswersheet,
        "view_groupanswersheet": viewGroupanswersheet,
      };
}

class Idtoken {
  final bool addIdtoken;
  final bool changeIdtoken;
  final bool deleteIdtoken;
  final bool viewIdtoken;

  Idtoken({
    required this.addIdtoken,
    required this.changeIdtoken,
    required this.deleteIdtoken,
    required this.viewIdtoken,
  });

  Idtoken copyWith({
    bool? addIdtoken,
    bool? changeIdtoken,
    bool? deleteIdtoken,
    bool? viewIdtoken,
  }) =>
      Idtoken(
        addIdtoken: addIdtoken ?? this.addIdtoken,
        changeIdtoken: changeIdtoken ?? this.changeIdtoken,
        deleteIdtoken: deleteIdtoken ?? this.deleteIdtoken,
        viewIdtoken: viewIdtoken ?? this.viewIdtoken,
      );

  factory Idtoken.fromRawJson(String str) => Idtoken.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Idtoken.fromJson(Map<String, dynamic> json) => Idtoken(
        addIdtoken: json["add_idtoken"],
        changeIdtoken: json["change_idtoken"],
        deleteIdtoken: json["delete_idtoken"],
        viewIdtoken: json["view_idtoken"],
      );

  Map<String, dynamic> toJson() => {
        "add_idtoken": addIdtoken,
        "change_idtoken": changeIdtoken,
        "delete_idtoken": deleteIdtoken,
        "view_idtoken": viewIdtoken,
      };
}

class Institute {
  final bool addInstitute;
  final bool changeInstitute;
  final bool deleteInstitute;
  final bool viewInstitute;

  Institute({
    required this.addInstitute,
    required this.changeInstitute,
    required this.deleteInstitute,
    required this.viewInstitute,
  });

  Institute copyWith({
    bool? addInstitute,
    bool? changeInstitute,
    bool? deleteInstitute,
    bool? viewInstitute,
  }) =>
      Institute(
        addInstitute: addInstitute ?? this.addInstitute,
        changeInstitute: changeInstitute ?? this.changeInstitute,
        deleteInstitute: deleteInstitute ?? this.deleteInstitute,
        viewInstitute: viewInstitute ?? this.viewInstitute,
      );

  factory Institute.fromRawJson(String str) =>
      Institute.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Institute.fromJson(Map<String, dynamic> json) => Institute(
        addInstitute: json["add_institute"],
        changeInstitute: json["change_institute"],
        deleteInstitute: json["delete_institute"],
        viewInstitute: json["view_institute"],
      );

  Map<String, dynamic> toJson() => {
        "add_institute": addInstitute,
        "change_institute": changeInstitute,
        "delete_institute": deleteInstitute,
        "view_institute": viewInstitute,
      };
}

class Intervalschedule {
  final bool addIntervalschedule;
  final bool changeIntervalschedule;
  final bool deleteIntervalschedule;
  final bool viewIntervalschedule;

  Intervalschedule({
    required this.addIntervalschedule,
    required this.changeIntervalschedule,
    required this.deleteIntervalschedule,
    required this.viewIntervalschedule,
  });

  Intervalschedule copyWith({
    bool? addIntervalschedule,
    bool? changeIntervalschedule,
    bool? deleteIntervalschedule,
    bool? viewIntervalschedule,
  }) =>
      Intervalschedule(
        addIntervalschedule: addIntervalschedule ?? this.addIntervalschedule,
        changeIntervalschedule:
            changeIntervalschedule ?? this.changeIntervalschedule,
        deleteIntervalschedule:
            deleteIntervalschedule ?? this.deleteIntervalschedule,
        viewIntervalschedule: viewIntervalschedule ?? this.viewIntervalschedule,
      );

  factory Intervalschedule.fromRawJson(String str) =>
      Intervalschedule.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Intervalschedule.fromJson(Map<String, dynamic> json) =>
      Intervalschedule(
        addIntervalschedule: json["add_intervalschedule"],
        changeIntervalschedule: json["change_intervalschedule"],
        deleteIntervalschedule: json["delete_intervalschedule"],
        viewIntervalschedule: json["view_intervalschedule"],
      );

  Map<String, dynamic> toJson() => {
        "add_intervalschedule": addIntervalschedule,
        "change_intervalschedule": changeIntervalschedule,
        "delete_intervalschedule": deleteIntervalschedule,
        "view_intervalschedule": viewIntervalschedule,
      };
}

class Landingsection {
  final bool addLandingsection;
  final bool changeLandingsection;
  final bool deleteLandingsection;
  final bool viewLandingsection;

  Landingsection({
    required this.addLandingsection,
    required this.changeLandingsection,
    required this.deleteLandingsection,
    required this.viewLandingsection,
  });

  Landingsection copyWith({
    bool? addLandingsection,
    bool? changeLandingsection,
    bool? deleteLandingsection,
    bool? viewLandingsection,
  }) =>
      Landingsection(
        addLandingsection: addLandingsection ?? this.addLandingsection,
        changeLandingsection: changeLandingsection ?? this.changeLandingsection,
        deleteLandingsection: deleteLandingsection ?? this.deleteLandingsection,
        viewLandingsection: viewLandingsection ?? this.viewLandingsection,
      );

  factory Landingsection.fromRawJson(String str) =>
      Landingsection.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Landingsection.fromJson(Map<String, dynamic> json) => Landingsection(
        addLandingsection: json["add_landingsection"],
        changeLandingsection: json["change_landingsection"],
        deleteLandingsection: json["delete_landingsection"],
        viewLandingsection: json["view_landingsection"],
      );

  Map<String, dynamic> toJson() => {
        "add_landingsection": addLandingsection,
        "change_landingsection": changeLandingsection,
        "delete_landingsection": deleteLandingsection,
        "view_landingsection": viewLandingsection,
      };
}

class Learnsic {
  final bool addLearnsic;
  final bool changeLearnsic;
  final bool deleteLearnsic;
  final bool viewLearnsic;

  Learnsic({
    required this.addLearnsic,
    required this.changeLearnsic,
    required this.deleteLearnsic,
    required this.viewLearnsic,
  });

  Learnsic copyWith({
    bool? addLearnsic,
    bool? changeLearnsic,
    bool? deleteLearnsic,
    bool? viewLearnsic,
  }) =>
      Learnsic(
        addLearnsic: addLearnsic ?? this.addLearnsic,
        changeLearnsic: changeLearnsic ?? this.changeLearnsic,
        deleteLearnsic: deleteLearnsic ?? this.deleteLearnsic,
        viewLearnsic: viewLearnsic ?? this.viewLearnsic,
      );

  factory Learnsic.fromRawJson(String str) =>
      Learnsic.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Learnsic.fromJson(Map<String, dynamic> json) => Learnsic(
        addLearnsic: json["add_learnsic"],
        changeLearnsic: json["change_learnsic"],
        deleteLearnsic: json["delete_learnsic"],
        viewLearnsic: json["view_learnsic"],
      );

  Map<String, dynamic> toJson() => {
        "add_learnsic": addLearnsic,
        "change_learnsic": changeLearnsic,
        "delete_learnsic": deleteLearnsic,
        "view_learnsic": viewLearnsic,
      };
}

class Lecture {
  final bool addLecture;
  final bool changeLecture;
  final bool deleteLecture;
  final bool viewLecture;

  Lecture({
    required this.addLecture,
    required this.changeLecture,
    required this.deleteLecture,
    required this.viewLecture,
  });

  Lecture copyWith({
    bool? addLecture,
    bool? changeLecture,
    bool? deleteLecture,
    bool? viewLecture,
  }) =>
      Lecture(
        addLecture: addLecture ?? this.addLecture,
        changeLecture: changeLecture ?? this.changeLecture,
        deleteLecture: deleteLecture ?? this.deleteLecture,
        viewLecture: viewLecture ?? this.viewLecture,
      );

  factory Lecture.fromRawJson(String str) => Lecture.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Lecture.fromJson(Map<String, dynamic> json) => Lecture(
        addLecture: json["add_lecture"],
        changeLecture: json["change_lecture"],
        deleteLecture: json["delete_lecture"],
        viewLecture: json["view_lecture"],
      );

  Map<String, dynamic> toJson() => {
        "add_lecture": addLecture,
        "change_lecture": changeLecture,
        "delete_lecture": deleteLecture,
        "view_lecture": viewLecture,
      };
}

class Lecturememeber {
  final bool addLecturememeber;
  final bool changeLecturememeber;
  final bool deleteLecturememeber;
  final bool viewLecturememeber;

  Lecturememeber({
    required this.addLecturememeber,
    required this.changeLecturememeber,
    required this.deleteLecturememeber,
    required this.viewLecturememeber,
  });

  Lecturememeber copyWith({
    bool? addLecturememeber,
    bool? changeLecturememeber,
    bool? deleteLecturememeber,
    bool? viewLecturememeber,
  }) =>
      Lecturememeber(
        addLecturememeber: addLecturememeber ?? this.addLecturememeber,
        changeLecturememeber: changeLecturememeber ?? this.changeLecturememeber,
        deleteLecturememeber: deleteLecturememeber ?? this.deleteLecturememeber,
        viewLecturememeber: viewLecturememeber ?? this.viewLecturememeber,
      );

  factory Lecturememeber.fromRawJson(String str) =>
      Lecturememeber.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Lecturememeber.fromJson(Map<String, dynamic> json) => Lecturememeber(
        addLecturememeber: json["add_lecturememeber"],
        changeLecturememeber: json["change_lecturememeber"],
        deleteLecturememeber: json["delete_lecturememeber"],
        viewLecturememeber: json["view_lecturememeber"],
      );

  Map<String, dynamic> toJson() => {
        "add_lecturememeber": addLecturememeber,
        "change_lecturememeber": changeLecturememeber,
        "delete_lecturememeber": deleteLecturememeber,
        "view_lecturememeber": viewLecturememeber,
      };
}

class Lecturevideo {
  final bool addLecturevideo;
  final bool changeLecturevideo;
  final bool deleteLecturevideo;
  final bool viewLecturevideo;

  Lecturevideo({
    required this.addLecturevideo,
    required this.changeLecturevideo,
    required this.deleteLecturevideo,
    required this.viewLecturevideo,
  });

  Lecturevideo copyWith({
    bool? addLecturevideo,
    bool? changeLecturevideo,
    bool? deleteLecturevideo,
    bool? viewLecturevideo,
  }) =>
      Lecturevideo(
        addLecturevideo: addLecturevideo ?? this.addLecturevideo,
        changeLecturevideo: changeLecturevideo ?? this.changeLecturevideo,
        deleteLecturevideo: deleteLecturevideo ?? this.deleteLecturevideo,
        viewLecturevideo: viewLecturevideo ?? this.viewLecturevideo,
      );

  factory Lecturevideo.fromRawJson(String str) =>
      Lecturevideo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Lecturevideo.fromJson(Map<String, dynamic> json) => Lecturevideo(
        addLecturevideo: json["add_lecturevideo"],
        changeLecturevideo: json["change_lecturevideo"],
        deleteLecturevideo: json["delete_lecturevideo"],
        viewLecturevideo: json["view_lecturevideo"],
      );

  Map<String, dynamic> toJson() => {
        "add_lecturevideo": addLecturevideo,
        "change_lecturevideo": changeLecturevideo,
        "delete_lecturevideo": deleteLecturevideo,
        "view_lecturevideo": viewLecturevideo,
      };
}

class Level {
  final bool addLevel;
  final bool changeLevel;
  final bool deleteLevel;
  final bool viewLevel;

  Level({
    required this.addLevel,
    required this.changeLevel,
    required this.deleteLevel,
    required this.viewLevel,
  });

  Level copyWith({
    bool? addLevel,
    bool? changeLevel,
    bool? deleteLevel,
    bool? viewLevel,
  }) =>
      Level(
        addLevel: addLevel ?? this.addLevel,
        changeLevel: changeLevel ?? this.changeLevel,
        deleteLevel: deleteLevel ?? this.deleteLevel,
        viewLevel: viewLevel ?? this.viewLevel,
      );

  factory Level.fromRawJson(String str) => Level.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Level.fromJson(Map<String, dynamic> json) => Level(
        addLevel: json["add_level"],
        changeLevel: json["change_level"],
        deleteLevel: json["delete_level"],
        viewLevel: json["view_level"],
      );

  Map<String, dynamic> toJson() => {
        "add_level": addLevel,
        "change_level": changeLevel,
        "delete_level": deleteLevel,
        "view_level": viewLevel,
      };
}

class Livetracker {
  final bool addLivetracker;
  final bool changeLivetracker;
  final bool deleteLivetracker;
  final bool viewLivetracker;

  Livetracker({
    required this.addLivetracker,
    required this.changeLivetracker,
    required this.deleteLivetracker,
    required this.viewLivetracker,
  });

  Livetracker copyWith({
    bool? addLivetracker,
    bool? changeLivetracker,
    bool? deleteLivetracker,
    bool? viewLivetracker,
  }) =>
      Livetracker(
        addLivetracker: addLivetracker ?? this.addLivetracker,
        changeLivetracker: changeLivetracker ?? this.changeLivetracker,
        deleteLivetracker: deleteLivetracker ?? this.deleteLivetracker,
        viewLivetracker: viewLivetracker ?? this.viewLivetracker,
      );

  factory Livetracker.fromRawJson(String str) =>
      Livetracker.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Livetracker.fromJson(Map<String, dynamic> json) => Livetracker(
        addLivetracker: json["add_livetracker"],
        changeLivetracker: json["change_livetracker"],
        deleteLivetracker: json["delete_livetracker"],
        viewLivetracker: json["view_livetracker"],
      );

  Map<String, dynamic> toJson() => {
        "add_livetracker": addLivetracker,
        "change_livetracker": changeLivetracker,
        "delete_livetracker": deleteLivetracker,
        "view_livetracker": viewLivetracker,
      };
}

class Mfaemail {
  final bool addMfaemail;
  final bool changeMfaemail;
  final bool deleteMfaemail;
  final bool viewMfaemail;

  Mfaemail({
    required this.addMfaemail,
    required this.changeMfaemail,
    required this.deleteMfaemail,
    required this.viewMfaemail,
  });

  Mfaemail copyWith({
    bool? addMfaemail,
    bool? changeMfaemail,
    bool? deleteMfaemail,
    bool? viewMfaemail,
  }) =>
      Mfaemail(
        addMfaemail: addMfaemail ?? this.addMfaemail,
        changeMfaemail: changeMfaemail ?? this.changeMfaemail,
        deleteMfaemail: deleteMfaemail ?? this.deleteMfaemail,
        viewMfaemail: viewMfaemail ?? this.viewMfaemail,
      );

  factory Mfaemail.fromRawJson(String str) =>
      Mfaemail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Mfaemail.fromJson(Map<String, dynamic> json) => Mfaemail(
        addMfaemail: json["add_mfaemail"],
        changeMfaemail: json["change_mfaemail"],
        deleteMfaemail: json["delete_mfaemail"],
        viewMfaemail: json["view_mfaemail"],
      );

  Map<String, dynamic> toJson() => {
        "add_mfaemail": addMfaemail,
        "change_mfaemail": changeMfaemail,
        "delete_mfaemail": deleteMfaemail,
        "view_mfaemail": viewMfaemail,
      };
}

class Mocktestenroll {
  final bool addMocktestenroll;
  final bool changeMocktestenroll;
  final bool deleteMocktestenroll;
  final bool viewMocktestenroll;

  Mocktestenroll({
    required this.addMocktestenroll,
    required this.changeMocktestenroll,
    required this.deleteMocktestenroll,
    required this.viewMocktestenroll,
  });

  Mocktestenroll copyWith({
    bool? addMocktestenroll,
    bool? changeMocktestenroll,
    bool? deleteMocktestenroll,
    bool? viewMocktestenroll,
  }) =>
      Mocktestenroll(
        addMocktestenroll: addMocktestenroll ?? this.addMocktestenroll,
        changeMocktestenroll: changeMocktestenroll ?? this.changeMocktestenroll,
        deleteMocktestenroll: deleteMocktestenroll ?? this.deleteMocktestenroll,
        viewMocktestenroll: viewMocktestenroll ?? this.viewMocktestenroll,
      );

  factory Mocktestenroll.fromRawJson(String str) =>
      Mocktestenroll.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Mocktestenroll.fromJson(Map<String, dynamic> json) => Mocktestenroll(
        addMocktestenroll: json["add_mocktestenroll"],
        changeMocktestenroll: json["change_mocktestenroll"],
        deleteMocktestenroll: json["delete_mocktestenroll"],
        viewMocktestenroll: json["view_mocktestenroll"],
      );

  Map<String, dynamic> toJson() => {
        "add_mocktestenroll": addMocktestenroll,
        "change_mocktestenroll": changeMocktestenroll,
        "delete_mocktestenroll": deleteMocktestenroll,
        "view_mocktestenroll": viewMocktestenroll,
      };
}

class Modelanswer {
  final bool addModelanswer;
  final bool changeModelanswer;
  final bool deleteModelanswer;
  final bool viewModelanswer;

  Modelanswer({
    required this.addModelanswer,
    required this.changeModelanswer,
    required this.deleteModelanswer,
    required this.viewModelanswer,
  });

  Modelanswer copyWith({
    bool? addModelanswer,
    bool? changeModelanswer,
    bool? deleteModelanswer,
    bool? viewModelanswer,
  }) =>
      Modelanswer(
        addModelanswer: addModelanswer ?? this.addModelanswer,
        changeModelanswer: changeModelanswer ?? this.changeModelanswer,
        deleteModelanswer: deleteModelanswer ?? this.deleteModelanswer,
        viewModelanswer: viewModelanswer ?? this.viewModelanswer,
      );

  factory Modelanswer.fromRawJson(String str) =>
      Modelanswer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Modelanswer.fromJson(Map<String, dynamic> json) => Modelanswer(
        addModelanswer: json["add_modelanswer"],
        changeModelanswer: json["change_modelanswer"],
        deleteModelanswer: json["delete_modelanswer"],
        viewModelanswer: json["view_modelanswer"],
      );

  Map<String, dynamic> toJson() => {
        "add_modelanswer": addModelanswer,
        "change_modelanswer": changeModelanswer,
        "delete_modelanswer": deleteModelanswer,
        "view_modelanswer": viewModelanswer,
      };
}

class Modelanswersheet {
  final bool addModelanswersheet;
  final bool changeModelanswersheet;
  final bool deleteModelanswersheet;
  final bool viewModelanswersheet;

  Modelanswersheet({
    required this.addModelanswersheet,
    required this.changeModelanswersheet,
    required this.deleteModelanswersheet,
    required this.viewModelanswersheet,
  });

  Modelanswersheet copyWith({
    bool? addModelanswersheet,
    bool? changeModelanswersheet,
    bool? deleteModelanswersheet,
    bool? viewModelanswersheet,
  }) =>
      Modelanswersheet(
        addModelanswersheet: addModelanswersheet ?? this.addModelanswersheet,
        changeModelanswersheet:
            changeModelanswersheet ?? this.changeModelanswersheet,
        deleteModelanswersheet:
            deleteModelanswersheet ?? this.deleteModelanswersheet,
        viewModelanswersheet: viewModelanswersheet ?? this.viewModelanswersheet,
      );

  factory Modelanswersheet.fromRawJson(String str) =>
      Modelanswersheet.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Modelanswersheet.fromJson(Map<String, dynamic> json) =>
      Modelanswersheet(
        addModelanswersheet: json["add_modelanswersheet"],
        changeModelanswersheet: json["change_modelanswersheet"],
        deleteModelanswersheet: json["delete_modelanswersheet"],
        viewModelanswersheet: json["view_modelanswersheet"],
      );

  Map<String, dynamic> toJson() => {
        "add_modelanswersheet": addModelanswersheet,
        "change_modelanswersheet": changeModelanswersheet,
        "delete_modelanswersheet": deleteModelanswersheet,
        "view_modelanswersheet": viewModelanswersheet,
      };
}

class Modelquestion {
  final bool addModelquestion;
  final bool changeModelquestion;
  final bool deleteModelquestion;
  final bool viewModelquestion;

  Modelquestion({
    required this.addModelquestion,
    required this.changeModelquestion,
    required this.deleteModelquestion,
    required this.viewModelquestion,
  });

  Modelquestion copyWith({
    bool? addModelquestion,
    bool? changeModelquestion,
    bool? deleteModelquestion,
    bool? viewModelquestion,
  }) =>
      Modelquestion(
        addModelquestion: addModelquestion ?? this.addModelquestion,
        changeModelquestion: changeModelquestion ?? this.changeModelquestion,
        deleteModelquestion: deleteModelquestion ?? this.deleteModelquestion,
        viewModelquestion: viewModelquestion ?? this.viewModelquestion,
      );

  factory Modelquestion.fromRawJson(String str) =>
      Modelquestion.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Modelquestion.fromJson(Map<String, dynamic> json) => Modelquestion(
        addModelquestion: json["add_modelquestion"],
        changeModelquestion: json["change_modelquestion"],
        deleteModelquestion: json["delete_modelquestion"],
        viewModelquestion: json["view_modelquestion"],
      );

  Map<String, dynamic> toJson() => {
        "add_modelquestion": addModelquestion,
        "change_modelquestion": changeModelquestion,
        "delete_modelquestion": deleteModelquestion,
        "view_modelquestion": viewModelquestion,
      };
}

class Modeltest {
  final bool addModeltest;
  final bool changeModeltest;
  final bool deleteModeltest;
  final bool viewModeltest;

  Modeltest({
    required this.addModeltest,
    required this.changeModeltest,
    required this.deleteModeltest,
    required this.viewModeltest,
  });

  Modeltest copyWith({
    bool? addModeltest,
    bool? changeModeltest,
    bool? deleteModeltest,
    bool? viewModeltest,
  }) =>
      Modeltest(
        addModeltest: addModeltest ?? this.addModeltest,
        changeModeltest: changeModeltest ?? this.changeModeltest,
        deleteModeltest: deleteModeltest ?? this.deleteModeltest,
        viewModeltest: viewModeltest ?? this.viewModeltest,
      );

  factory Modeltest.fromRawJson(String str) =>
      Modeltest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Modeltest.fromJson(Map<String, dynamic> json) => Modeltest(
        addModeltest: json["add_modeltest"],
        changeModeltest: json["change_modeltest"],
        deleteModeltest: json["delete_modeltest"],
        viewModeltest: json["view_modeltest"],
      );

  Map<String, dynamic> toJson() => {
        "add_modeltest": addModeltest,
        "change_modeltest": changeModeltest,
        "delete_modeltest": deleteModeltest,
        "view_modeltest": viewModeltest,
      };
}

class Nonce {
  final bool addNonce;
  final bool changeNonce;
  final bool deleteNonce;
  final bool viewNonce;

  Nonce({
    required this.addNonce,
    required this.changeNonce,
    required this.deleteNonce,
    required this.viewNonce,
  });

  Nonce copyWith({
    bool? addNonce,
    bool? changeNonce,
    bool? deleteNonce,
    bool? viewNonce,
  }) =>
      Nonce(
        addNonce: addNonce ?? this.addNonce,
        changeNonce: changeNonce ?? this.changeNonce,
        deleteNonce: deleteNonce ?? this.deleteNonce,
        viewNonce: viewNonce ?? this.viewNonce,
      );

  factory Nonce.fromRawJson(String str) => Nonce.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Nonce.fromJson(Map<String, dynamic> json) => Nonce(
        addNonce: json["add_nonce"],
        changeNonce: json["change_nonce"],
        deleteNonce: json["delete_nonce"],
        viewNonce: json["view_nonce"],
      );

  Map<String, dynamic> toJson() => {
        "add_nonce": addNonce,
        "change_nonce": changeNonce,
        "delete_nonce": deleteNonce,
        "view_nonce": viewNonce,
      };
}

class Note {
  final bool addNote;
  final bool changeNote;
  final bool deleteNote;
  final bool viewNote;

  Note({
    required this.addNote,
    required this.changeNote,
    required this.deleteNote,
    required this.viewNote,
  });

  Note copyWith({
    bool? addNote,
    bool? changeNote,
    bool? deleteNote,
    bool? viewNote,
  }) =>
      Note(
        addNote: addNote ?? this.addNote,
        changeNote: changeNote ?? this.changeNote,
        deleteNote: deleteNote ?? this.deleteNote,
        viewNote: viewNote ?? this.viewNote,
      );

  factory Note.fromRawJson(String str) => Note.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Note.fromJson(Map<String, dynamic> json) => Note(
        addNote: json["add_note"],
        changeNote: json["change_note"],
        deleteNote: json["delete_note"],
        viewNote: json["view_note"],
      );

  Map<String, dynamic> toJson() => {
        "add_note": addNote,
        "change_note": changeNote,
        "delete_note": deleteNote,
        "view_note": viewNote,
      };
}

class Notification {
  final bool addNotification;
  final bool changeNotification;
  final bool deleteNotification;
  final bool viewNotification;

  Notification({
    required this.addNotification,
    required this.changeNotification,
    required this.deleteNotification,
    required this.viewNotification,
  });

  Notification copyWith({
    bool? addNotification,
    bool? changeNotification,
    bool? deleteNotification,
    bool? viewNotification,
  }) =>
      Notification(
        addNotification: addNotification ?? this.addNotification,
        changeNotification: changeNotification ?? this.changeNotification,
        deleteNotification: deleteNotification ?? this.deleteNotification,
        viewNotification: viewNotification ?? this.viewNotification,
      );

  factory Notification.fromRawJson(String str) =>
      Notification.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Notification.fromJson(Map<String, dynamic> json) => Notification(
        addNotification: json["add_notification"],
        changeNotification: json["change_notification"],
        deleteNotification: json["delete_notification"],
        viewNotification: json["view_notification"],
      );

  Map<String, dynamic> toJson() => {
        "add_notification": addNotification,
        "change_notification": changeNotification,
        "delete_notification": deleteNotification,
        "view_notification": viewNotification,
      };
}

class Office {
  final bool addOffice;
  final bool changeOffice;
  final bool deleteOffice;
  final bool viewOffice;

  Office({
    required this.addOffice,
    required this.changeOffice,
    required this.deleteOffice,
    required this.viewOffice,
  });

  Office copyWith({
    bool? addOffice,
    bool? changeOffice,
    bool? deleteOffice,
    bool? viewOffice,
  }) =>
      Office(
        addOffice: addOffice ?? this.addOffice,
        changeOffice: changeOffice ?? this.changeOffice,
        deleteOffice: deleteOffice ?? this.deleteOffice,
        viewOffice: viewOffice ?? this.viewOffice,
      );

  factory Office.fromRawJson(String str) => Office.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Office.fromJson(Map<String, dynamic> json) => Office(
        addOffice: json["add_office"],
        changeOffice: json["change_office"],
        deleteOffice: json["delete_office"],
        viewOffice: json["view_office"],
      );

  Map<String, dynamic> toJson() => {
        "add_office": addOffice,
        "change_office": changeOffice,
        "delete_office": deleteOffice,
        "view_office": viewOffice,
      };
}

class Order {
  final bool addOrder;
  final bool changeOrder;
  final bool deleteOrder;
  final bool viewOrder;

  Order({
    required this.addOrder,
    required this.changeOrder,
    required this.deleteOrder,
    required this.viewOrder,
  });

  Order copyWith({
    bool? addOrder,
    bool? changeOrder,
    bool? deleteOrder,
    bool? viewOrder,
  }) =>
      Order(
        addOrder: addOrder ?? this.addOrder,
        changeOrder: changeOrder ?? this.changeOrder,
        deleteOrder: deleteOrder ?? this.deleteOrder,
        viewOrder: viewOrder ?? this.viewOrder,
      );

  factory Order.fromRawJson(String str) => Order.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        addOrder: json["add_order"],
        changeOrder: json["change_order"],
        deleteOrder: json["delete_order"],
        viewOrder: json["view_order"],
      );

  Map<String, dynamic> toJson() => {
        "add_order": addOrder,
        "change_order": changeOrder,
        "delete_order": deleteOrder,
        "view_order": viewOrder,
      };
}

class Partial {
  final bool addPartial;
  final bool changePartial;
  final bool deletePartial;
  final bool viewPartial;

  Partial({
    required this.addPartial,
    required this.changePartial,
    required this.deletePartial,
    required this.viewPartial,
  });

  Partial copyWith({
    bool? addPartial,
    bool? changePartial,
    bool? deletePartial,
    bool? viewPartial,
  }) =>
      Partial(
        addPartial: addPartial ?? this.addPartial,
        changePartial: changePartial ?? this.changePartial,
        deletePartial: deletePartial ?? this.deletePartial,
        viewPartial: viewPartial ?? this.viewPartial,
      );

  factory Partial.fromRawJson(String str) => Partial.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Partial.fromJson(Map<String, dynamic> json) => Partial(
        addPartial: json["add_partial"],
        changePartial: json["change_partial"],
        deletePartial: json["delete_partial"],
        viewPartial: json["view_partial"],
      );

  Map<String, dynamic> toJson() => {
        "add_partial": addPartial,
        "change_partial": changePartial,
        "delete_partial": deletePartial,
        "view_partial": viewPartial,
      };
}

class Partner {
  final bool addPartner;
  final bool changePartner;
  final bool deletePartner;
  final bool viewPartner;

  Partner({
    required this.addPartner,
    required this.changePartner,
    required this.deletePartner,
    required this.viewPartner,
  });

  Partner copyWith({
    bool? addPartner,
    bool? changePartner,
    bool? deletePartner,
    bool? viewPartner,
  }) =>
      Partner(
        addPartner: addPartner ?? this.addPartner,
        changePartner: changePartner ?? this.changePartner,
        deletePartner: deletePartner ?? this.deletePartner,
        viewPartner: viewPartner ?? this.viewPartner,
      );

  factory Partner.fromRawJson(String str) => Partner.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Partner.fromJson(Map<String, dynamic> json) => Partner(
        addPartner: json["add_partner"],
        changePartner: json["change_partner"],
        deletePartner: json["delete_partner"],
        viewPartner: json["view_partner"],
      );

  Map<String, dynamic> toJson() => {
        "add_partner": addPartner,
        "change_partner": changePartner,
        "delete_partner": deletePartner,
        "view_partner": viewPartner,
      };
}

class Periodictask {
  final bool addPeriodictask;
  final bool changePeriodictask;
  final bool deletePeriodictask;
  final bool viewPeriodictask;

  Periodictask({
    required this.addPeriodictask,
    required this.changePeriodictask,
    required this.deletePeriodictask,
    required this.viewPeriodictask,
  });

  Periodictask copyWith({
    bool? addPeriodictask,
    bool? changePeriodictask,
    bool? deletePeriodictask,
    bool? viewPeriodictask,
  }) =>
      Periodictask(
        addPeriodictask: addPeriodictask ?? this.addPeriodictask,
        changePeriodictask: changePeriodictask ?? this.changePeriodictask,
        deletePeriodictask: deletePeriodictask ?? this.deletePeriodictask,
        viewPeriodictask: viewPeriodictask ?? this.viewPeriodictask,
      );

  factory Periodictask.fromRawJson(String str) =>
      Periodictask.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Periodictask.fromJson(Map<String, dynamic> json) => Periodictask(
        addPeriodictask: json["add_periodictask"],
        changePeriodictask: json["change_periodictask"],
        deletePeriodictask: json["delete_periodictask"],
        viewPeriodictask: json["view_periodictask"],
      );

  Map<String, dynamic> toJson() => {
        "add_periodictask": addPeriodictask,
        "change_periodictask": changePeriodictask,
        "delete_periodictask": deletePeriodictask,
        "view_periodictask": viewPeriodictask,
      };
}

class Periodictasks {
  final bool addPeriodictasks;
  final bool changePeriodictasks;
  final bool deletePeriodictasks;
  final bool viewPeriodictasks;

  Periodictasks({
    required this.addPeriodictasks,
    required this.changePeriodictasks,
    required this.deletePeriodictasks,
    required this.viewPeriodictasks,
  });

  Periodictasks copyWith({
    bool? addPeriodictasks,
    bool? changePeriodictasks,
    bool? deletePeriodictasks,
    bool? viewPeriodictasks,
  }) =>
      Periodictasks(
        addPeriodictasks: addPeriodictasks ?? this.addPeriodictasks,
        changePeriodictasks: changePeriodictasks ?? this.changePeriodictasks,
        deletePeriodictasks: deletePeriodictasks ?? this.deletePeriodictasks,
        viewPeriodictasks: viewPeriodictasks ?? this.viewPeriodictasks,
      );

  factory Periodictasks.fromRawJson(String str) =>
      Periodictasks.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Periodictasks.fromJson(Map<String, dynamic> json) => Periodictasks(
        addPeriodictasks: json["add_periodictasks"],
        changePeriodictasks: json["change_periodictasks"],
        deletePeriodictasks: json["delete_periodictasks"],
        viewPeriodictasks: json["view_periodictasks"],
      );

  Map<String, dynamic> toJson() => {
        "add_periodictasks": addPeriodictasks,
        "change_periodictasks": changePeriodictasks,
        "delete_periodictasks": deletePeriodictasks,
        "view_periodictasks": viewPeriodictasks,
      };
}

class PermissionPermission {
  final bool addPermission;
  final bool changePermission;
  final bool deletePermission;
  final bool viewPermission;

  PermissionPermission({
    required this.addPermission,
    required this.changePermission,
    required this.deletePermission,
    required this.viewPermission,
  });

  PermissionPermission copyWith({
    bool? addPermission,
    bool? changePermission,
    bool? deletePermission,
    bool? viewPermission,
  }) =>
      PermissionPermission(
        addPermission: addPermission ?? this.addPermission,
        changePermission: changePermission ?? this.changePermission,
        deletePermission: deletePermission ?? this.deletePermission,
        viewPermission: viewPermission ?? this.viewPermission,
      );

  factory PermissionPermission.fromRawJson(String str) =>
      PermissionPermission.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PermissionPermission.fromJson(Map<String, dynamic> json) =>
      PermissionPermission(
        addPermission: json["add_permission"],
        changePermission: json["change_permission"],
        deletePermission: json["delete_permission"],
        viewPermission: json["view_permission"],
      );

  Map<String, dynamic> toJson() => {
        "add_permission": addPermission,
        "change_permission": changePermission,
        "delete_permission": deletePermission,
        "view_permission": viewPermission,
      };
}

class Class {
  final bool addClass;
  final bool changeClass;
  final bool deleteClass;
  final bool viewClass;

  Class({
    required this.addClass,
    required this.changeClass,
    required this.deleteClass,
    required this.viewClass,
  });

  Class copyWith({
    bool? addClass,
    bool? changeClass,
    bool? deleteClass,
    bool? viewClass,
  }) =>
      Class(
        addClass: addClass ?? this.addClass,
        changeClass: changeClass ?? this.changeClass,
        deleteClass: deleteClass ?? this.deleteClass,
        viewClass: viewClass ?? this.viewClass,
      );

  factory Class.fromRawJson(String str) => Class.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Class.fromJson(Map<String, dynamic> json) => Class(
        addClass: json["add_class"],
        changeClass: json["change_class"],
        deleteClass: json["delete_class"],
        viewClass: json["view_class"],
      );

  Map<String, dynamic> toJson() => {
        "add_class": addClass,
        "change_class": changeClass,
        "delete_class": deleteClass,
        "view_class": viewClass,
      };
}

class Physcialmocktest {
  final bool addPhyscialmocktest;
  final bool changePhyscialmocktest;
  final bool deletePhyscialmocktest;
  final bool viewPhyscialmocktest;

  Physcialmocktest({
    required this.addPhyscialmocktest,
    required this.changePhyscialmocktest,
    required this.deletePhyscialmocktest,
    required this.viewPhyscialmocktest,
  });

  Physcialmocktest copyWith({
    bool? addPhyscialmocktest,
    bool? changePhyscialmocktest,
    bool? deletePhyscialmocktest,
    bool? viewPhyscialmocktest,
  }) =>
      Physcialmocktest(
        addPhyscialmocktest: addPhyscialmocktest ?? this.addPhyscialmocktest,
        changePhyscialmocktest:
            changePhyscialmocktest ?? this.changePhyscialmocktest,
        deletePhyscialmocktest:
            deletePhyscialmocktest ?? this.deletePhyscialmocktest,
        viewPhyscialmocktest: viewPhyscialmocktest ?? this.viewPhyscialmocktest,
      );

  factory Physcialmocktest.fromRawJson(String str) =>
      Physcialmocktest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Physcialmocktest.fromJson(Map<String, dynamic> json) =>
      Physcialmocktest(
        addPhyscialmocktest: json["add_physcialmocktest"],
        changePhyscialmocktest: json["change_physcialmocktest"],
        deletePhyscialmocktest: json["delete_physcialmocktest"],
        viewPhyscialmocktest: json["view_physcialmocktest"],
      );

  Map<String, dynamic> toJson() => {
        "add_physcialmocktest": addPhyscialmocktest,
        "change_physcialmocktest": changePhyscialmocktest,
        "delete_physcialmocktest": deletePhyscialmocktest,
        "view_physcialmocktest": viewPhyscialmocktest,
      };
}

class Physcialmockteststudent {
  final bool addPhyscialmockteststudent;
  final bool changePhyscialmockteststudent;
  final bool deletePhyscialmockteststudent;
  final bool viewPhyscialmockteststudent;

  Physcialmockteststudent({
    required this.addPhyscialmockteststudent,
    required this.changePhyscialmockteststudent,
    required this.deletePhyscialmockteststudent,
    required this.viewPhyscialmockteststudent,
  });

  Physcialmockteststudent copyWith({
    bool? addPhyscialmockteststudent,
    bool? changePhyscialmockteststudent,
    bool? deletePhyscialmockteststudent,
    bool? viewPhyscialmockteststudent,
  }) =>
      Physcialmockteststudent(
        addPhyscialmockteststudent:
            addPhyscialmockteststudent ?? this.addPhyscialmockteststudent,
        changePhyscialmockteststudent:
            changePhyscialmockteststudent ?? this.changePhyscialmockteststudent,
        deletePhyscialmockteststudent:
            deletePhyscialmockteststudent ?? this.deletePhyscialmockteststudent,
        viewPhyscialmockteststudent:
            viewPhyscialmockteststudent ?? this.viewPhyscialmockteststudent,
      );

  factory Physcialmockteststudent.fromRawJson(String str) =>
      Physcialmockteststudent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Physcialmockteststudent.fromJson(Map<String, dynamic> json) =>
      Physcialmockteststudent(
        addPhyscialmockteststudent: json["add_physcialmockteststudent"],
        changePhyscialmockteststudent: json["change_physcialmockteststudent"],
        deletePhyscialmockteststudent: json["delete_physcialmockteststudent"],
        viewPhyscialmockteststudent: json["view_physcialmockteststudent"],
      );

  Map<String, dynamic> toJson() => {
        "add_physcialmockteststudent": addPhyscialmockteststudent,
        "change_physcialmockteststudent": changePhyscialmockteststudent,
        "delete_physcialmockteststudent": deletePhyscialmockteststudent,
        "view_physcialmockteststudent": viewPhyscialmockteststudent,
      };
}

class Physicalclass {
  final bool addPhysicalclass;
  final bool changePhysicalclass;
  final bool deletePhysicalclass;
  final bool viewPhysicalclass;

  Physicalclass({
    required this.addPhysicalclass,
    required this.changePhysicalclass,
    required this.deletePhysicalclass,
    required this.viewPhysicalclass,
  });

  Physicalclass copyWith({
    bool? addPhysicalclass,
    bool? changePhysicalclass,
    bool? deletePhysicalclass,
    bool? viewPhysicalclass,
  }) =>
      Physicalclass(
        addPhysicalclass: addPhysicalclass ?? this.addPhysicalclass,
        changePhysicalclass: changePhysicalclass ?? this.changePhysicalclass,
        deletePhysicalclass: deletePhysicalclass ?? this.deletePhysicalclass,
        viewPhysicalclass: viewPhysicalclass ?? this.viewPhysicalclass,
      );

  factory Physicalclass.fromRawJson(String str) =>
      Physicalclass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Physicalclass.fromJson(Map<String, dynamic> json) => Physicalclass(
        addPhysicalclass: json["add_physicalclass"],
        changePhysicalclass: json["change_physicalclass"],
        deletePhysicalclass: json["delete_physicalclass"],
        viewPhysicalclass: json["view_physicalclass"],
      );

  Map<String, dynamic> toJson() => {
        "add_physicalclass": addPhysicalclass,
        "change_physicalclass": changePhysicalclass,
        "delete_physicalclass": deletePhysicalclass,
        "view_physicalclass": viewPhysicalclass,
      };
}

class Physicalclassbatch {
  final bool addPhysicalclassbatch;
  final bool changePhysicalclassbatch;
  final bool deletePhysicalclassbatch;
  final bool viewPhysicalclassbatch;

  Physicalclassbatch({
    required this.addPhysicalclassbatch,
    required this.changePhysicalclassbatch,
    required this.deletePhysicalclassbatch,
    required this.viewPhysicalclassbatch,
  });

  Physicalclassbatch copyWith({
    bool? addPhysicalclassbatch,
    bool? changePhysicalclassbatch,
    bool? deletePhysicalclassbatch,
    bool? viewPhysicalclassbatch,
  }) =>
      Physicalclassbatch(
        addPhysicalclassbatch:
            addPhysicalclassbatch ?? this.addPhysicalclassbatch,
        changePhysicalclassbatch:
            changePhysicalclassbatch ?? this.changePhysicalclassbatch,
        deletePhysicalclassbatch:
            deletePhysicalclassbatch ?? this.deletePhysicalclassbatch,
        viewPhysicalclassbatch:
            viewPhysicalclassbatch ?? this.viewPhysicalclassbatch,
      );

  factory Physicalclassbatch.fromRawJson(String str) =>
      Physicalclassbatch.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Physicalclassbatch.fromJson(Map<String, dynamic> json) =>
      Physicalclassbatch(
        addPhysicalclassbatch: json["add_physicalclassbatch"],
        changePhysicalclassbatch: json["change_physicalclassbatch"],
        deletePhysicalclassbatch: json["delete_physicalclassbatch"],
        viewPhysicalclassbatch: json["view_physicalclassbatch"],
      );

  Map<String, dynamic> toJson() => {
        "add_physicalclassbatch": addPhysicalclassbatch,
        "change_physicalclassbatch": changePhysicalclassbatch,
        "delete_physicalclassbatch": deletePhysicalclassbatch,
        "view_physicalclassbatch": viewPhysicalclassbatch,
      };
}

class Physicalclassbooking {
  final bool addPhysicalclassbooking;
  final bool changePhysicalclassbooking;
  final bool deletePhysicalclassbooking;
  final bool viewPhysicalclassbooking;

  Physicalclassbooking({
    required this.addPhysicalclassbooking,
    required this.changePhysicalclassbooking,
    required this.deletePhysicalclassbooking,
    required this.viewPhysicalclassbooking,
  });

  Physicalclassbooking copyWith({
    bool? addPhysicalclassbooking,
    bool? changePhysicalclassbooking,
    bool? deletePhysicalclassbooking,
    bool? viewPhysicalclassbooking,
  }) =>
      Physicalclassbooking(
        addPhysicalclassbooking:
            addPhysicalclassbooking ?? this.addPhysicalclassbooking,
        changePhysicalclassbooking:
            changePhysicalclassbooking ?? this.changePhysicalclassbooking,
        deletePhysicalclassbooking:
            deletePhysicalclassbooking ?? this.deletePhysicalclassbooking,
        viewPhysicalclassbooking:
            viewPhysicalclassbooking ?? this.viewPhysicalclassbooking,
      );

  factory Physicalclassbooking.fromRawJson(String str) =>
      Physicalclassbooking.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Physicalclassbooking.fromJson(Map<String, dynamic> json) =>
      Physicalclassbooking(
        addPhysicalclassbooking: json["add_physicalclassbooking"],
        changePhysicalclassbooking: json["change_physicalclassbooking"],
        deletePhysicalclassbooking: json["delete_physicalclassbooking"],
        viewPhysicalclassbooking: json["view_physicalclassbooking"],
      );

  Map<String, dynamic> toJson() => {
        "add_physicalclassbooking": addPhysicalclassbooking,
        "change_physicalclassbooking": changePhysicalclassbooking,
        "delete_physicalclassbooking": deletePhysicalclassbooking,
        "view_physicalclassbooking": viewPhysicalclassbooking,
      };
}

class Physicalclassinfo {
  final bool addPhysicalclassinfo;
  final bool changePhysicalclassinfo;
  final bool deletePhysicalclassinfo;
  final bool viewPhysicalclassinfo;

  Physicalclassinfo({
    required this.addPhysicalclassinfo,
    required this.changePhysicalclassinfo,
    required this.deletePhysicalclassinfo,
    required this.viewPhysicalclassinfo,
  });

  Physicalclassinfo copyWith({
    bool? addPhysicalclassinfo,
    bool? changePhysicalclassinfo,
    bool? deletePhysicalclassinfo,
    bool? viewPhysicalclassinfo,
  }) =>
      Physicalclassinfo(
        addPhysicalclassinfo: addPhysicalclassinfo ?? this.addPhysicalclassinfo,
        changePhysicalclassinfo:
            changePhysicalclassinfo ?? this.changePhysicalclassinfo,
        deletePhysicalclassinfo:
            deletePhysicalclassinfo ?? this.deletePhysicalclassinfo,
        viewPhysicalclassinfo:
            viewPhysicalclassinfo ?? this.viewPhysicalclassinfo,
      );

  factory Physicalclassinfo.fromRawJson(String str) =>
      Physicalclassinfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Physicalclassinfo.fromJson(Map<String, dynamic> json) =>
      Physicalclassinfo(
        addPhysicalclassinfo: json["add_physicalclassinfo"],
        changePhysicalclassinfo: json["change_physicalclassinfo"],
        deletePhysicalclassinfo: json["delete_physicalclassinfo"],
        viewPhysicalclassinfo: json["view_physicalclassinfo"],
      );

  Map<String, dynamic> toJson() => {
        "add_physicalclassinfo": addPhysicalclassinfo,
        "change_physicalclassinfo": changePhysicalclassinfo,
        "delete_physicalclassinfo": deletePhysicalclassinfo,
        "view_physicalclassinfo": viewPhysicalclassinfo,
      };
}

class Polloption {
  final bool addPolloption;
  final bool changePolloption;
  final bool deletePolloption;
  final bool viewPolloption;

  Polloption({
    required this.addPolloption,
    required this.changePolloption,
    required this.deletePolloption,
    required this.viewPolloption,
  });

  Polloption copyWith({
    bool? addPolloption,
    bool? changePolloption,
    bool? deletePolloption,
    bool? viewPolloption,
  }) =>
      Polloption(
        addPolloption: addPolloption ?? this.addPolloption,
        changePolloption: changePolloption ?? this.changePolloption,
        deletePolloption: deletePolloption ?? this.deletePolloption,
        viewPolloption: viewPolloption ?? this.viewPolloption,
      );

  factory Polloption.fromRawJson(String str) =>
      Polloption.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Polloption.fromJson(Map<String, dynamic> json) => Polloption(
        addPolloption: json["add_polloption"],
        changePolloption: json["change_polloption"],
        deletePolloption: json["delete_polloption"],
        viewPolloption: json["view_polloption"],
      );

  Map<String, dynamic> toJson() => {
        "add_polloption": addPolloption,
        "change_polloption": changePolloption,
        "delete_polloption": deletePolloption,
        "view_polloption": viewPolloption,
      };
}

class Question {
  final bool addQuestion;
  final bool changeQuestion;
  final bool deleteQuestion;
  final bool viewQuestion;

  Question({
    required this.addQuestion,
    required this.changeQuestion,
    required this.deleteQuestion,
    required this.viewQuestion,
  });

  Question copyWith({
    bool? addQuestion,
    bool? changeQuestion,
    bool? deleteQuestion,
    bool? viewQuestion,
  }) =>
      Question(
        addQuestion: addQuestion ?? this.addQuestion,
        changeQuestion: changeQuestion ?? this.changeQuestion,
        deleteQuestion: deleteQuestion ?? this.deleteQuestion,
        viewQuestion: viewQuestion ?? this.viewQuestion,
      );

  factory Question.fromRawJson(String str) =>
      Question.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Question.fromJson(Map<String, dynamic> json) => Question(
        addQuestion: json["add_question"],
        changeQuestion: json["change_question"],
        deleteQuestion: json["delete_question"],
        viewQuestion: json["view_question"],
      );

  Map<String, dynamic> toJson() => {
        "add_question": addQuestion,
        "change_question": changeQuestion,
        "delete_question": deleteQuestion,
        "view_question": viewQuestion,
      };
}

class Quiz {
  final bool addQuiz;
  final bool changeQuiz;
  final bool deleteQuiz;
  final bool viewQuiz;

  Quiz({
    required this.addQuiz,
    required this.changeQuiz,
    required this.deleteQuiz,
    required this.viewQuiz,
  });

  Quiz copyWith({
    bool? addQuiz,
    bool? changeQuiz,
    bool? deleteQuiz,
    bool? viewQuiz,
  }) =>
      Quiz(
        addQuiz: addQuiz ?? this.addQuiz,
        changeQuiz: changeQuiz ?? this.changeQuiz,
        deleteQuiz: deleteQuiz ?? this.deleteQuiz,
        viewQuiz: viewQuiz ?? this.viewQuiz,
      );

  factory Quiz.fromRawJson(String str) => Quiz.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Quiz.fromJson(Map<String, dynamic> json) => Quiz(
        addQuiz: json["add_quiz"],
        changeQuiz: json["change_quiz"],
        deleteQuiz: json["delete_quiz"],
        viewQuiz: json["view_quiz"],
      );

  Map<String, dynamic> toJson() => {
        "add_quiz": addQuiz,
        "change_quiz": changeQuiz,
        "delete_quiz": deleteQuiz,
        "view_quiz": viewQuiz,
      };
}

class Quizanswersheet {
  final bool addQuizanswersheet;
  final bool changeQuizanswersheet;
  final bool deleteQuizanswersheet;
  final bool viewQuizanswersheet;

  Quizanswersheet({
    required this.addQuizanswersheet,
    required this.changeQuizanswersheet,
    required this.deleteQuizanswersheet,
    required this.viewQuizanswersheet,
  });

  Quizanswersheet copyWith({
    bool? addQuizanswersheet,
    bool? changeQuizanswersheet,
    bool? deleteQuizanswersheet,
    bool? viewQuizanswersheet,
  }) =>
      Quizanswersheet(
        addQuizanswersheet: addQuizanswersheet ?? this.addQuizanswersheet,
        changeQuizanswersheet:
            changeQuizanswersheet ?? this.changeQuizanswersheet,
        deleteQuizanswersheet:
            deleteQuizanswersheet ?? this.deleteQuizanswersheet,
        viewQuizanswersheet: viewQuizanswersheet ?? this.viewQuizanswersheet,
      );

  factory Quizanswersheet.fromRawJson(String str) =>
      Quizanswersheet.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Quizanswersheet.fromJson(Map<String, dynamic> json) =>
      Quizanswersheet(
        addQuizanswersheet: json["add_quizanswersheet"],
        changeQuizanswersheet: json["change_quizanswersheet"],
        deleteQuizanswersheet: json["delete_quizanswersheet"],
        viewQuizanswersheet: json["view_quizanswersheet"],
      );

  Map<String, dynamic> toJson() => {
        "add_quizanswersheet": addQuizanswersheet,
        "change_quizanswersheet": changeQuizanswersheet,
        "delete_quizanswersheet": deleteQuizanswersheet,
        "view_quizanswersheet": viewQuizanswersheet,
      };
}

class Reaction {
  final bool addReaction;
  final bool changeReaction;
  final bool deleteReaction;
  final bool viewReaction;

  Reaction({
    required this.addReaction,
    required this.changeReaction,
    required this.deleteReaction,
    required this.viewReaction,
  });

  Reaction copyWith({
    bool? addReaction,
    bool? changeReaction,
    bool? deleteReaction,
    bool? viewReaction,
  }) =>
      Reaction(
        addReaction: addReaction ?? this.addReaction,
        changeReaction: changeReaction ?? this.changeReaction,
        deleteReaction: deleteReaction ?? this.deleteReaction,
        viewReaction: viewReaction ?? this.viewReaction,
      );

  factory Reaction.fromRawJson(String str) =>
      Reaction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Reaction.fromJson(Map<String, dynamic> json) => Reaction(
        addReaction: json["add_reaction"],
        changeReaction: json["change_reaction"],
        deleteReaction: json["delete_reaction"],
        viewReaction: json["view_reaction"],
      );

  Map<String, dynamic> toJson() => {
        "add_reaction": addReaction,
        "change_reaction": changeReaction,
        "delete_reaction": deleteReaction,
        "view_reaction": viewReaction,
      };
}

class Refer {
  final bool addRefer;
  final bool changeRefer;
  final bool deleteRefer;
  final bool viewRefer;

  Refer({
    required this.addRefer,
    required this.changeRefer,
    required this.deleteRefer,
    required this.viewRefer,
  });

  Refer copyWith({
    bool? addRefer,
    bool? changeRefer,
    bool? deleteRefer,
    bool? viewRefer,
  }) =>
      Refer(
        addRefer: addRefer ?? this.addRefer,
        changeRefer: changeRefer ?? this.changeRefer,
        deleteRefer: deleteRefer ?? this.deleteRefer,
        viewRefer: viewRefer ?? this.viewRefer,
      );

  factory Refer.fromRawJson(String str) => Refer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Refer.fromJson(Map<String, dynamic> json) => Refer(
        addRefer: json["add_refer"],
        changeRefer: json["change_refer"],
        deleteRefer: json["delete_refer"],
        viewRefer: json["view_refer"],
      );

  Map<String, dynamic> toJson() => {
        "add_refer": addRefer,
        "change_refer": changeRefer,
        "delete_refer": deleteRefer,
        "view_refer": viewRefer,
      };
}

class Referamount {
  final bool addReferamount;
  final bool changeReferamount;
  final bool deleteReferamount;
  final bool viewReferamount;

  Referamount({
    required this.addReferamount,
    required this.changeReferamount,
    required this.deleteReferamount,
    required this.viewReferamount,
  });

  Referamount copyWith({
    bool? addReferamount,
    bool? changeReferamount,
    bool? deleteReferamount,
    bool? viewReferamount,
  }) =>
      Referamount(
        addReferamount: addReferamount ?? this.addReferamount,
        changeReferamount: changeReferamount ?? this.changeReferamount,
        deleteReferamount: deleteReferamount ?? this.deleteReferamount,
        viewReferamount: viewReferamount ?? this.viewReferamount,
      );

  factory Referamount.fromRawJson(String str) =>
      Referamount.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Referamount.fromJson(Map<String, dynamic> json) => Referamount(
        addReferamount: json["add_referamount"],
        changeReferamount: json["change_referamount"],
        deleteReferamount: json["delete_referamount"],
        viewReferamount: json["view_referamount"],
      );

  Map<String, dynamic> toJson() => {
        "add_referamount": addReferamount,
        "change_referamount": changeReferamount,
        "delete_referamount": deleteReferamount,
        "view_referamount": viewReferamount,
      };
}

class Refreshtoken {
  final bool addRefreshtoken;
  final bool changeRefreshtoken;
  final bool deleteRefreshtoken;
  final bool viewRefreshtoken;

  Refreshtoken({
    required this.addRefreshtoken,
    required this.changeRefreshtoken,
    required this.deleteRefreshtoken,
    required this.viewRefreshtoken,
  });

  Refreshtoken copyWith({
    bool? addRefreshtoken,
    bool? changeRefreshtoken,
    bool? deleteRefreshtoken,
    bool? viewRefreshtoken,
  }) =>
      Refreshtoken(
        addRefreshtoken: addRefreshtoken ?? this.addRefreshtoken,
        changeRefreshtoken: changeRefreshtoken ?? this.changeRefreshtoken,
        deleteRefreshtoken: deleteRefreshtoken ?? this.deleteRefreshtoken,
        viewRefreshtoken: viewRefreshtoken ?? this.viewRefreshtoken,
      );

  factory Refreshtoken.fromRawJson(String str) =>
      Refreshtoken.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Refreshtoken.fromJson(Map<String, dynamic> json) => Refreshtoken(
        addRefreshtoken: json["add_refreshtoken"],
        changeRefreshtoken: json["change_refreshtoken"],
        deleteRefreshtoken: json["delete_refreshtoken"],
        viewRefreshtoken: json["view_refreshtoken"],
      );

  Map<String, dynamic> toJson() => {
        "add_refreshtoken": addRefreshtoken,
        "change_refreshtoken": changeRefreshtoken,
        "delete_refreshtoken": deleteRefreshtoken,
        "view_refreshtoken": viewRefreshtoken,
      };
}

class Requestcourse {
  final bool addRequestcourse;
  final bool changeRequestcourse;
  final bool deleteRequestcourse;
  final bool viewRequestcourse;

  Requestcourse({
    required this.addRequestcourse,
    required this.changeRequestcourse,
    required this.deleteRequestcourse,
    required this.viewRequestcourse,
  });

  Requestcourse copyWith({
    bool? addRequestcourse,
    bool? changeRequestcourse,
    bool? deleteRequestcourse,
    bool? viewRequestcourse,
  }) =>
      Requestcourse(
        addRequestcourse: addRequestcourse ?? this.addRequestcourse,
        changeRequestcourse: changeRequestcourse ?? this.changeRequestcourse,
        deleteRequestcourse: deleteRequestcourse ?? this.deleteRequestcourse,
        viewRequestcourse: viewRequestcourse ?? this.viewRequestcourse,
      );

  factory Requestcourse.fromRawJson(String str) =>
      Requestcourse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Requestcourse.fromJson(Map<String, dynamic> json) => Requestcourse(
        addRequestcourse: json["add_requestcourse"],
        changeRequestcourse: json["change_requestcourse"],
        deleteRequestcourse: json["delete_requestcourse"],
        viewRequestcourse: json["view_requestcourse"],
      );

  Map<String, dynamic> toJson() => {
        "add_requestcourse": addRequestcourse,
        "change_requestcourse": changeRequestcourse,
        "delete_requestcourse": deleteRequestcourse,
        "view_requestcourse": viewRequestcourse,
      };
}

class Result {
  final bool addResult;
  final bool changeResult;
  final bool deleteResult;
  final bool viewResult;

  Result({
    required this.addResult,
    required this.changeResult,
    required this.deleteResult,
    required this.viewResult,
  });

  Result copyWith({
    bool? addResult,
    bool? changeResult,
    bool? deleteResult,
    bool? viewResult,
  }) =>
      Result(
        addResult: addResult ?? this.addResult,
        changeResult: changeResult ?? this.changeResult,
        deleteResult: deleteResult ?? this.deleteResult,
        viewResult: viewResult ?? this.viewResult,
      );

  factory Result.fromRawJson(String str) => Result.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        addResult: json["add_result"],
        changeResult: json["change_result"],
        deleteResult: json["delete_result"],
        viewResult: json["view_result"],
      );

  Map<String, dynamic> toJson() => {
        "add_result": addResult,
        "change_result": changeResult,
        "delete_result": deleteResult,
        "view_result": viewResult,
      };
}

class Resultfile {
  final bool addResultfile;
  final bool changeResultfile;
  final bool deleteResultfile;
  final bool viewResultfile;

  Resultfile({
    required this.addResultfile,
    required this.changeResultfile,
    required this.deleteResultfile,
    required this.viewResultfile,
  });

  Resultfile copyWith({
    bool? addResultfile,
    bool? changeResultfile,
    bool? deleteResultfile,
    bool? viewResultfile,
  }) =>
      Resultfile(
        addResultfile: addResultfile ?? this.addResultfile,
        changeResultfile: changeResultfile ?? this.changeResultfile,
        deleteResultfile: deleteResultfile ?? this.deleteResultfile,
        viewResultfile: viewResultfile ?? this.viewResultfile,
      );

  factory Resultfile.fromRawJson(String str) =>
      Resultfile.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Resultfile.fromJson(Map<String, dynamic> json) => Resultfile(
        addResultfile: json["add_resultfile"],
        changeResultfile: json["change_resultfile"],
        deleteResultfile: json["delete_resultfile"],
        viewResultfile: json["view_resultfile"],
      );

  Map<String, dynamic> toJson() => {
        "add_resultfile": addResultfile,
        "change_resultfile": changeResultfile,
        "delete_resultfile": deleteResultfile,
        "view_resultfile": viewResultfile,
      };
}

class Room {
  final bool addRoom;
  final bool changeRoom;
  final bool deleteRoom;
  final bool viewRoom;

  Room({
    required this.addRoom,
    required this.changeRoom,
    required this.deleteRoom,
    required this.viewRoom,
  });

  Room copyWith({
    bool? addRoom,
    bool? changeRoom,
    bool? deleteRoom,
    bool? viewRoom,
  }) =>
      Room(
        addRoom: addRoom ?? this.addRoom,
        changeRoom: changeRoom ?? this.changeRoom,
        deleteRoom: deleteRoom ?? this.deleteRoom,
        viewRoom: viewRoom ?? this.viewRoom,
      );

  factory Room.fromRawJson(String str) => Room.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Room.fromJson(Map<String, dynamic> json) => Room(
        addRoom: json["add_room"],
        changeRoom: json["change_room"],
        deleteRoom: json["delete_room"],
        viewRoom: json["view_room"],
      );

  Map<String, dynamic> toJson() => {
        "add_room": addRoom,
        "change_room": changeRoom,
        "delete_room": deleteRoom,
        "view_room": viewRoom,
      };
}

class Roommember {
  final bool addRoommember;
  final bool changeRoommember;
  final bool deleteRoommember;
  final bool viewRoommember;

  Roommember({
    required this.addRoommember,
    required this.changeRoommember,
    required this.deleteRoommember,
    required this.viewRoommember,
  });

  Roommember copyWith({
    bool? addRoommember,
    bool? changeRoommember,
    bool? deleteRoommember,
    bool? viewRoommember,
  }) =>
      Roommember(
        addRoommember: addRoommember ?? this.addRoommember,
        changeRoommember: changeRoommember ?? this.changeRoommember,
        deleteRoommember: deleteRoommember ?? this.deleteRoommember,
        viewRoommember: viewRoommember ?? this.viewRoommember,
      );

  factory Roommember.fromRawJson(String str) =>
      Roommember.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Roommember.fromJson(Map<String, dynamic> json) => Roommember(
        addRoommember: json["add_roommember"],
        changeRoommember: json["change_roommember"],
        deleteRoommember: json["delete_roommember"],
        viewRoommember: json["view_roommember"],
      );

  Map<String, dynamic> toJson() => {
        "add_roommember": addRoommember,
        "change_roommember": changeRoommember,
        "delete_roommember": deleteRoommember,
        "view_roommember": viewRoommember,
      };
}

class Section {
  final bool addSection;
  final bool changeSection;
  final bool deleteSection;
  final bool viewSection;

  Section({
    required this.addSection,
    required this.changeSection,
    required this.deleteSection,
    required this.viewSection,
  });

  Section copyWith({
    bool? addSection,
    bool? changeSection,
    bool? deleteSection,
    bool? viewSection,
  }) =>
      Section(
        addSection: addSection ?? this.addSection,
        changeSection: changeSection ?? this.changeSection,
        deleteSection: deleteSection ?? this.deleteSection,
        viewSection: viewSection ?? this.viewSection,
      );

  factory Section.fromRawJson(String str) => Section.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Section.fromJson(Map<String, dynamic> json) => Section(
        addSection: json["add_section"],
        changeSection: json["change_section"],
        deleteSection: json["delete_section"],
        viewSection: json["view_section"],
      );

  Map<String, dynamic> toJson() => {
        "add_section": addSection,
        "change_section": changeSection,
        "delete_section": deleteSection,
        "view_section": viewSection,
      };
}

class Sectioninfo {
  final bool addSectioninfo;
  final bool changeSectioninfo;
  final bool deleteSectioninfo;
  final bool viewSectioninfo;

  Sectioninfo({
    required this.addSectioninfo,
    required this.changeSectioninfo,
    required this.deleteSectioninfo,
    required this.viewSectioninfo,
  });

  Sectioninfo copyWith({
    bool? addSectioninfo,
    bool? changeSectioninfo,
    bool? deleteSectioninfo,
    bool? viewSectioninfo,
  }) =>
      Sectioninfo(
        addSectioninfo: addSectioninfo ?? this.addSectioninfo,
        changeSectioninfo: changeSectioninfo ?? this.changeSectioninfo,
        deleteSectioninfo: deleteSectioninfo ?? this.deleteSectioninfo,
        viewSectioninfo: viewSectioninfo ?? this.viewSectioninfo,
      );

  factory Sectioninfo.fromRawJson(String str) =>
      Sectioninfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Sectioninfo.fromJson(Map<String, dynamic> json) => Sectioninfo(
        addSectioninfo: json["add_sectioninfo"],
        changeSectioninfo: json["change_sectioninfo"],
        deleteSectioninfo: json["delete_sectioninfo"],
        viewSectioninfo: json["view_sectioninfo"],
      );

  Map<String, dynamic> toJson() => {
        "add_sectioninfo": addSectioninfo,
        "change_sectioninfo": changeSectioninfo,
        "delete_sectioninfo": deleteSectioninfo,
        "view_sectioninfo": viewSectioninfo,
      };
}

class Segment {
  final bool addSegment;
  final bool changeSegment;
  final bool deleteSegment;
  final bool viewSegment;

  Segment({
    required this.addSegment,
    required this.changeSegment,
    required this.deleteSegment,
    required this.viewSegment,
  });

  Segment copyWith({
    bool? addSegment,
    bool? changeSegment,
    bool? deleteSegment,
    bool? viewSegment,
  }) =>
      Segment(
        addSegment: addSegment ?? this.addSegment,
        changeSegment: changeSegment ?? this.changeSegment,
        deleteSegment: deleteSegment ?? this.deleteSegment,
        viewSegment: viewSegment ?? this.viewSegment,
      );

  factory Segment.fromRawJson(String str) => Segment.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Segment.fromJson(Map<String, dynamic> json) => Segment(
        addSegment: json["add_segment"],
        changeSegment: json["change_segment"],
        deleteSegment: json["delete_segment"],
        viewSegment: json["view_segment"],
      );

  Map<String, dynamic> toJson() => {
        "add_segment": addSegment,
        "change_segment": changeSegment,
        "delete_segment": deleteSegment,
        "view_segment": viewSegment,
      };
}

class Seo {
  final bool addSeo;
  final bool changeSeo;
  final bool deleteSeo;
  final bool viewSeo;

  Seo({
    required this.addSeo,
    required this.changeSeo,
    required this.deleteSeo,
    required this.viewSeo,
  });

  Seo copyWith({
    bool? addSeo,
    bool? changeSeo,
    bool? deleteSeo,
    bool? viewSeo,
  }) =>
      Seo(
        addSeo: addSeo ?? this.addSeo,
        changeSeo: changeSeo ?? this.changeSeo,
        deleteSeo: deleteSeo ?? this.deleteSeo,
        viewSeo: viewSeo ?? this.viewSeo,
      );

  factory Seo.fromRawJson(String str) => Seo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Seo.fromJson(Map<String, dynamic> json) => Seo(
        addSeo: json["add_seo"],
        changeSeo: json["change_seo"],
        deleteSeo: json["delete_seo"],
        viewSeo: json["view_seo"],
      );

  Map<String, dynamic> toJson() => {
        "add_seo": addSeo,
        "change_seo": changeSeo,
        "delete_seo": deleteSeo,
        "view_seo": viewSeo,
      };
}

class Site {
  final bool addSite;
  final bool changeSite;
  final bool deleteSite;
  final bool viewSite;

  Site({
    required this.addSite,
    required this.changeSite,
    required this.deleteSite,
    required this.viewSite,
  });

  Site copyWith({
    bool? addSite,
    bool? changeSite,
    bool? deleteSite,
    bool? viewSite,
  }) =>
      Site(
        addSite: addSite ?? this.addSite,
        changeSite: changeSite ?? this.changeSite,
        deleteSite: deleteSite ?? this.deleteSite,
        viewSite: viewSite ?? this.viewSite,
      );

  factory Site.fromRawJson(String str) => Site.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Site.fromJson(Map<String, dynamic> json) => Site(
        addSite: json["add_site"],
        changeSite: json["change_site"],
        deleteSite: json["delete_site"],
        viewSite: json["view_site"],
      );

  Map<String, dynamic> toJson() => {
        "add_site": addSite,
        "change_site": changeSite,
        "delete_site": deleteSite,
        "view_site": viewSite,
      };
}

class Smsotp {
  final bool addSmsotp;
  final bool changeSmsotp;
  final bool deleteSmsotp;
  final bool viewSmsotp;

  Smsotp({
    required this.addSmsotp,
    required this.changeSmsotp,
    required this.deleteSmsotp,
    required this.viewSmsotp,
  });

  Smsotp copyWith({
    bool? addSmsotp,
    bool? changeSmsotp,
    bool? deleteSmsotp,
    bool? viewSmsotp,
  }) =>
      Smsotp(
        addSmsotp: addSmsotp ?? this.addSmsotp,
        changeSmsotp: changeSmsotp ?? this.changeSmsotp,
        deleteSmsotp: deleteSmsotp ?? this.deleteSmsotp,
        viewSmsotp: viewSmsotp ?? this.viewSmsotp,
      );

  factory Smsotp.fromRawJson(String str) => Smsotp.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Smsotp.fromJson(Map<String, dynamic> json) => Smsotp(
        addSmsotp: json["add_smsotp"],
        changeSmsotp: json["change_smsotp"],
        deleteSmsotp: json["delete_smsotp"],
        viewSmsotp: json["view_smsotp"],
      );

  Map<String, dynamic> toJson() => {
        "add_smsotp": addSmsotp,
        "change_smsotp": changeSmsotp,
        "delete_smsotp": deleteSmsotp,
        "view_smsotp": viewSmsotp,
      };
}

class Socialmedia {
  final bool addSocialmedia;
  final bool changeSocialmedia;
  final bool deleteSocialmedia;
  final bool viewSocialmedia;

  Socialmedia({
    required this.addSocialmedia,
    required this.changeSocialmedia,
    required this.deleteSocialmedia,
    required this.viewSocialmedia,
  });

  Socialmedia copyWith({
    bool? addSocialmedia,
    bool? changeSocialmedia,
    bool? deleteSocialmedia,
    bool? viewSocialmedia,
  }) =>
      Socialmedia(
        addSocialmedia: addSocialmedia ?? this.addSocialmedia,
        changeSocialmedia: changeSocialmedia ?? this.changeSocialmedia,
        deleteSocialmedia: deleteSocialmedia ?? this.deleteSocialmedia,
        viewSocialmedia: viewSocialmedia ?? this.viewSocialmedia,
      );

  factory Socialmedia.fromRawJson(String str) =>
      Socialmedia.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Socialmedia.fromJson(Map<String, dynamic> json) => Socialmedia(
        addSocialmedia: json["add_socialmedia"],
        changeSocialmedia: json["change_socialmedia"],
        deleteSocialmedia: json["delete_socialmedia"],
        viewSocialmedia: json["view_socialmedia"],
      );

  Map<String, dynamic> toJson() => {
        "add_socialmedia": addSocialmedia,
        "change_socialmedia": changeSocialmedia,
        "delete_socialmedia": deleteSocialmedia,
        "view_socialmedia": viewSocialmedia,
      };
}

class Solarschedule {
  final bool addSolarschedule;
  final bool changeSolarschedule;
  final bool deleteSolarschedule;
  final bool viewSolarschedule;

  Solarschedule({
    required this.addSolarschedule,
    required this.changeSolarschedule,
    required this.deleteSolarschedule,
    required this.viewSolarschedule,
  });

  Solarschedule copyWith({
    bool? addSolarschedule,
    bool? changeSolarschedule,
    bool? deleteSolarschedule,
    bool? viewSolarschedule,
  }) =>
      Solarschedule(
        addSolarschedule: addSolarschedule ?? this.addSolarschedule,
        changeSolarschedule: changeSolarschedule ?? this.changeSolarschedule,
        deleteSolarschedule: deleteSolarschedule ?? this.deleteSolarschedule,
        viewSolarschedule: viewSolarschedule ?? this.viewSolarschedule,
      );

  factory Solarschedule.fromRawJson(String str) =>
      Solarschedule.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Solarschedule.fromJson(Map<String, dynamic> json) => Solarschedule(
        addSolarschedule: json["add_solarschedule"],
        changeSolarschedule: json["change_solarschedule"],
        deleteSolarschedule: json["delete_solarschedule"],
        viewSolarschedule: json["view_solarschedule"],
      );

  Map<String, dynamic> toJson() => {
        "add_solarschedule": addSolarschedule,
        "change_solarschedule": changeSolarschedule,
        "delete_solarschedule": deleteSolarschedule,
        "view_solarschedule": viewSolarschedule,
      };
}

class Stickynote {
  final bool addStickynote;
  final bool changeStickynote;
  final bool deleteStickynote;
  final bool viewStickynote;

  Stickynote({
    required this.addStickynote,
    required this.changeStickynote,
    required this.deleteStickynote,
    required this.viewStickynote,
  });

  Stickynote copyWith({
    bool? addStickynote,
    bool? changeStickynote,
    bool? deleteStickynote,
    bool? viewStickynote,
  }) =>
      Stickynote(
        addStickynote: addStickynote ?? this.addStickynote,
        changeStickynote: changeStickynote ?? this.changeStickynote,
        deleteStickynote: deleteStickynote ?? this.deleteStickynote,
        viewStickynote: viewStickynote ?? this.viewStickynote,
      );

  factory Stickynote.fromRawJson(String str) =>
      Stickynote.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Stickynote.fromJson(Map<String, dynamic> json) => Stickynote(
        addStickynote: json["add_stickynote"],
        changeStickynote: json["change_stickynote"],
        deleteStickynote: json["delete_stickynote"],
        viewStickynote: json["view_stickynote"],
      );

  Map<String, dynamic> toJson() => {
        "add_stickynote": addStickynote,
        "change_stickynote": changeStickynote,
        "delete_stickynote": deleteStickynote,
        "view_stickynote": viewStickynote,
      };
}

class Student {
  final bool addStudent;
  final bool changeStudent;
  final bool deleteStudent;
  final bool viewStudent;

  Student({
    required this.addStudent,
    required this.changeStudent,
    required this.deleteStudent,
    required this.viewStudent,
  });

  Student copyWith({
    bool? addStudent,
    bool? changeStudent,
    bool? deleteStudent,
    bool? viewStudent,
  }) =>
      Student(
        addStudent: addStudent ?? this.addStudent,
        changeStudent: changeStudent ?? this.changeStudent,
        deleteStudent: deleteStudent ?? this.deleteStudent,
        viewStudent: viewStudent ?? this.viewStudent,
      );

  factory Student.fromRawJson(String str) => Student.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Student.fromJson(Map<String, dynamic> json) => Student(
        addStudent: json["add_student"],
        changeStudent: json["change_student"],
        deleteStudent: json["delete_student"],
        viewStudent: json["view_student"],
      );

  Map<String, dynamic> toJson() => {
        "add_student": addStudent,
        "change_student": changeStudent,
        "delete_student": deleteStudent,
        "view_student": viewStudent,
      };
}

class Subject {
  final bool addSubject;
  final bool changeSubject;
  final bool deleteSubject;
  final bool viewSubject;

  Subject({
    required this.addSubject,
    required this.changeSubject,
    required this.deleteSubject,
    required this.viewSubject,
  });

  Subject copyWith({
    bool? addSubject,
    bool? changeSubject,
    bool? deleteSubject,
    bool? viewSubject,
  }) =>
      Subject(
        addSubject: addSubject ?? this.addSubject,
        changeSubject: changeSubject ?? this.changeSubject,
        deleteSubject: deleteSubject ?? this.deleteSubject,
        viewSubject: viewSubject ?? this.viewSubject,
      );

  factory Subject.fromRawJson(String str) => Subject.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Subject.fromJson(Map<String, dynamic> json) => Subject(
        addSubject: json["add_subject"],
        changeSubject: json["change_subject"],
        deleteSubject: json["delete_subject"],
        viewSubject: json["view_subject"],
      );

  Map<String, dynamic> toJson() => {
        "add_subject": addSubject,
        "change_subject": changeSubject,
        "delete_subject": deleteSubject,
        "view_subject": viewSubject,
      };
}

class Subjectnote {
  final bool addSubjectnote;
  final bool changeSubjectnote;
  final bool deleteSubjectnote;
  final bool viewSubjectnote;

  Subjectnote({
    required this.addSubjectnote,
    required this.changeSubjectnote,
    required this.deleteSubjectnote,
    required this.viewSubjectnote,
  });

  Subjectnote copyWith({
    bool? addSubjectnote,
    bool? changeSubjectnote,
    bool? deleteSubjectnote,
    bool? viewSubjectnote,
  }) =>
      Subjectnote(
        addSubjectnote: addSubjectnote ?? this.addSubjectnote,
        changeSubjectnote: changeSubjectnote ?? this.changeSubjectnote,
        deleteSubjectnote: deleteSubjectnote ?? this.deleteSubjectnote,
        viewSubjectnote: viewSubjectnote ?? this.viewSubjectnote,
      );

  factory Subjectnote.fromRawJson(String str) =>
      Subjectnote.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Subjectnote.fromJson(Map<String, dynamic> json) => Subjectnote(
        addSubjectnote: json["add_subjectnote"],
        changeSubjectnote: json["change_subjectnote"],
        deleteSubjectnote: json["delete_subjectnote"],
        viewSubjectnote: json["view_subjectnote"],
      );

  Map<String, dynamic> toJson() => {
        "add_subjectnote": addSubjectnote,
        "change_subjectnote": changeSubjectnote,
        "delete_subjectnote": deleteSubjectnote,
        "view_subjectnote": viewSubjectnote,
      };
}

class Subjectscore {
  final bool addSubjectscore;
  final bool changeSubjectscore;
  final bool deleteSubjectscore;
  final bool viewSubjectscore;

  Subjectscore({
    required this.addSubjectscore,
    required this.changeSubjectscore,
    required this.deleteSubjectscore,
    required this.viewSubjectscore,
  });

  Subjectscore copyWith({
    bool? addSubjectscore,
    bool? changeSubjectscore,
    bool? deleteSubjectscore,
    bool? viewSubjectscore,
  }) =>
      Subjectscore(
        addSubjectscore: addSubjectscore ?? this.addSubjectscore,
        changeSubjectscore: changeSubjectscore ?? this.changeSubjectscore,
        deleteSubjectscore: deleteSubjectscore ?? this.deleteSubjectscore,
        viewSubjectscore: viewSubjectscore ?? this.viewSubjectscore,
      );

  factory Subjectscore.fromRawJson(String str) =>
      Subjectscore.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Subjectscore.fromJson(Map<String, dynamic> json) => Subjectscore(
        addSubjectscore: json["add_subjectscore"],
        changeSubjectscore: json["change_subjectscore"],
        deleteSubjectscore: json["delete_subjectscore"],
        viewSubjectscore: json["view_subjectscore"],
      );

  Map<String, dynamic> toJson() => {
        "add_subjectscore": addSubjectscore,
        "change_subjectscore": changeSubjectscore,
        "delete_subjectscore": deleteSubjectscore,
        "view_subjectscore": viewSubjectscore,
      };
}

class Task {
  final bool addTask;
  final bool changeTask;
  final bool deleteTask;
  final bool viewTask;

  Task({
    required this.addTask,
    required this.changeTask,
    required this.deleteTask,
    required this.viewTask,
  });

  Task copyWith({
    bool? addTask,
    bool? changeTask,
    bool? deleteTask,
    bool? viewTask,
  }) =>
      Task(
        addTask: addTask ?? this.addTask,
        changeTask: changeTask ?? this.changeTask,
        deleteTask: deleteTask ?? this.deleteTask,
        viewTask: viewTask ?? this.viewTask,
      );

  factory Task.fromRawJson(String str) => Task.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Task.fromJson(Map<String, dynamic> json) => Task(
        addTask: json["add_task"],
        changeTask: json["change_task"],
        deleteTask: json["delete_task"],
        viewTask: json["view_task"],
      );

  Map<String, dynamic> toJson() => {
        "add_task": addTask,
        "change_task": changeTask,
        "delete_task": deleteTask,
        "view_task": viewTask,
      };
}

class Taskcomment {
  final bool addTaskcomment;
  final bool changeTaskcomment;
  final bool deleteTaskcomment;
  final bool viewTaskcomment;

  Taskcomment({
    required this.addTaskcomment,
    required this.changeTaskcomment,
    required this.deleteTaskcomment,
    required this.viewTaskcomment,
  });

  Taskcomment copyWith({
    bool? addTaskcomment,
    bool? changeTaskcomment,
    bool? deleteTaskcomment,
    bool? viewTaskcomment,
  }) =>
      Taskcomment(
        addTaskcomment: addTaskcomment ?? this.addTaskcomment,
        changeTaskcomment: changeTaskcomment ?? this.changeTaskcomment,
        deleteTaskcomment: deleteTaskcomment ?? this.deleteTaskcomment,
        viewTaskcomment: viewTaskcomment ?? this.viewTaskcomment,
      );

  factory Taskcomment.fromRawJson(String str) =>
      Taskcomment.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Taskcomment.fromJson(Map<String, dynamic> json) => Taskcomment(
        addTaskcomment: json["add_taskcomment"],
        changeTaskcomment: json["change_taskcomment"],
        deleteTaskcomment: json["delete_taskcomment"],
        viewTaskcomment: json["view_taskcomment"],
      );

  Map<String, dynamic> toJson() => {
        "add_taskcomment": addTaskcomment,
        "change_taskcomment": changeTaskcomment,
        "delete_taskcomment": deleteTaskcomment,
        "view_taskcomment": viewTaskcomment,
      };
}

class Termscondition {
  final bool addTermscondition;
  final bool changeTermscondition;
  final bool deleteTermscondition;
  final bool viewTermscondition;

  Termscondition({
    required this.addTermscondition,
    required this.changeTermscondition,
    required this.deleteTermscondition,
    required this.viewTermscondition,
  });

  Termscondition copyWith({
    bool? addTermscondition,
    bool? changeTermscondition,
    bool? deleteTermscondition,
    bool? viewTermscondition,
  }) =>
      Termscondition(
        addTermscondition: addTermscondition ?? this.addTermscondition,
        changeTermscondition: changeTermscondition ?? this.changeTermscondition,
        deleteTermscondition: deleteTermscondition ?? this.deleteTermscondition,
        viewTermscondition: viewTermscondition ?? this.viewTermscondition,
      );

  factory Termscondition.fromRawJson(String str) =>
      Termscondition.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Termscondition.fromJson(Map<String, dynamic> json) => Termscondition(
        addTermscondition: json["add_termscondition"],
        changeTermscondition: json["change_termscondition"],
        deleteTermscondition: json["delete_termscondition"],
        viewTermscondition: json["view_termscondition"],
      );

  Map<String, dynamic> toJson() => {
        "add_termscondition": addTermscondition,
        "change_termscondition": changeTermscondition,
        "delete_termscondition": deleteTermscondition,
        "view_termscondition": viewTermscondition,
      };
}

class Test {
  final bool addTest;
  final bool changeTest;
  final bool deleteTest;
  final bool viewTest;

  Test({
    required this.addTest,
    required this.changeTest,
    required this.deleteTest,
    required this.viewTest,
  });

  Test copyWith({
    bool? addTest,
    bool? changeTest,
    bool? deleteTest,
    bool? viewTest,
  }) =>
      Test(
        addTest: addTest ?? this.addTest,
        changeTest: changeTest ?? this.changeTest,
        deleteTest: deleteTest ?? this.deleteTest,
        viewTest: viewTest ?? this.viewTest,
      );

  factory Test.fromRawJson(String str) => Test.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Test.fromJson(Map<String, dynamic> json) => Test(
        addTest: json["add_test"],
        changeTest: json["change_test"],
        deleteTest: json["delete_test"],
        viewTest: json["view_test"],
      );

  Map<String, dynamic> toJson() => {
        "add_test": addTest,
        "change_test": changeTest,
        "delete_test": deleteTest,
        "view_test": viewTest,
      };
}

class Testimonial {
  final bool addTestimonial;
  final bool changeTestimonial;
  final bool deleteTestimonial;
  final bool viewTestimonial;

  Testimonial({
    required this.addTestimonial,
    required this.changeTestimonial,
    required this.deleteTestimonial,
    required this.viewTestimonial,
  });

  Testimonial copyWith({
    bool? addTestimonial,
    bool? changeTestimonial,
    bool? deleteTestimonial,
    bool? viewTestimonial,
  }) =>
      Testimonial(
        addTestimonial: addTestimonial ?? this.addTestimonial,
        changeTestimonial: changeTestimonial ?? this.changeTestimonial,
        deleteTestimonial: deleteTestimonial ?? this.deleteTestimonial,
        viewTestimonial: viewTestimonial ?? this.viewTestimonial,
      );

  factory Testimonial.fromRawJson(String str) =>
      Testimonial.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Testimonial.fromJson(Map<String, dynamic> json) => Testimonial(
        addTestimonial: json["add_testimonial"],
        changeTestimonial: json["change_testimonial"],
        deleteTestimonial: json["delete_testimonial"],
        viewTestimonial: json["view_testimonial"],
      );

  Map<String, dynamic> toJson() => {
        "add_testimonial": addTestimonial,
        "change_testimonial": changeTestimonial,
        "delete_testimonial": deleteTestimonial,
        "view_testimonial": viewTestimonial,
      };
}

class Thread {
  final bool addThread;
  final bool changeThread;
  final bool deleteThread;
  final bool viewThread;

  Thread({
    required this.addThread,
    required this.changeThread,
    required this.deleteThread,
    required this.viewThread,
  });

  Thread copyWith({
    bool? addThread,
    bool? changeThread,
    bool? deleteThread,
    bool? viewThread,
  }) =>
      Thread(
        addThread: addThread ?? this.addThread,
        changeThread: changeThread ?? this.changeThread,
        deleteThread: deleteThread ?? this.deleteThread,
        viewThread: viewThread ?? this.viewThread,
      );

  factory Thread.fromRawJson(String str) => Thread.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Thread.fromJson(Map<String, dynamic> json) => Thread(
        addThread: json["add_thread"],
        changeThread: json["change_thread"],
        deleteThread: json["delete_thread"],
        viewThread: json["view_thread"],
      );

  Map<String, dynamic> toJson() => {
        "add_thread": addThread,
        "change_thread": changeThread,
        "delete_thread": deleteThread,
        "view_thread": viewThread,
      };
}

class Timetracker {
  final bool addTimetracker;
  final bool changeTimetracker;
  final bool deleteTimetracker;
  final bool viewTimetracker;

  Timetracker({
    required this.addTimetracker,
    required this.changeTimetracker,
    required this.deleteTimetracker,
    required this.viewTimetracker,
  });

  Timetracker copyWith({
    bool? addTimetracker,
    bool? changeTimetracker,
    bool? deleteTimetracker,
    bool? viewTimetracker,
  }) =>
      Timetracker(
        addTimetracker: addTimetracker ?? this.addTimetracker,
        changeTimetracker: changeTimetracker ?? this.changeTimetracker,
        deleteTimetracker: deleteTimetracker ?? this.deleteTimetracker,
        viewTimetracker: viewTimetracker ?? this.viewTimetracker,
      );

  factory Timetracker.fromRawJson(String str) =>
      Timetracker.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Timetracker.fromJson(Map<String, dynamic> json) => Timetracker(
        addTimetracker: json["add_timetracker"],
        changeTimetracker: json["change_timetracker"],
        deleteTimetracker: json["delete_timetracker"],
        viewTimetracker: json["view_timetracker"],
      );

  Map<String, dynamic> toJson() => {
        "add_timetracker": addTimetracker,
        "change_timetracker": changeTimetracker,
        "delete_timetracker": deleteTimetracker,
        "view_timetracker": viewTimetracker,
      };
}

class Tokenproxy {
  final bool addTokenproxy;
  final bool changeTokenproxy;
  final bool deleteTokenproxy;
  final bool viewTokenproxy;

  Tokenproxy({
    required this.addTokenproxy,
    required this.changeTokenproxy,
    required this.deleteTokenproxy,
    required this.viewTokenproxy,
  });

  Tokenproxy copyWith({
    bool? addTokenproxy,
    bool? changeTokenproxy,
    bool? deleteTokenproxy,
    bool? viewTokenproxy,
  }) =>
      Tokenproxy(
        addTokenproxy: addTokenproxy ?? this.addTokenproxy,
        changeTokenproxy: changeTokenproxy ?? this.changeTokenproxy,
        deleteTokenproxy: deleteTokenproxy ?? this.deleteTokenproxy,
        viewTokenproxy: viewTokenproxy ?? this.viewTokenproxy,
      );

  factory Tokenproxy.fromRawJson(String str) =>
      Tokenproxy.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Tokenproxy.fromJson(Map<String, dynamic> json) => Tokenproxy(
        addTokenproxy: json["add_tokenproxy"],
        changeTokenproxy: json["change_tokenproxy"],
        deleteTokenproxy: json["delete_tokenproxy"],
        viewTokenproxy: json["view_tokenproxy"],
      );

  Map<String, dynamic> toJson() => {
        "add_tokenproxy": addTokenproxy,
        "change_tokenproxy": changeTokenproxy,
        "delete_tokenproxy": deleteTokenproxy,
        "view_tokenproxy": viewTokenproxy,
      };
}

class Tutor {
  final bool addTutor;
  final bool changeTutor;
  final bool deleteTutor;
  final bool viewTutor;

  Tutor({
    required this.addTutor,
    required this.changeTutor,
    required this.deleteTutor,
    required this.viewTutor,
  });

  Tutor copyWith({
    bool? addTutor,
    bool? changeTutor,
    bool? deleteTutor,
    bool? viewTutor,
  }) =>
      Tutor(
        addTutor: addTutor ?? this.addTutor,
        changeTutor: changeTutor ?? this.changeTutor,
        deleteTutor: deleteTutor ?? this.deleteTutor,
        viewTutor: viewTutor ?? this.viewTutor,
      );

  factory Tutor.fromRawJson(String str) => Tutor.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Tutor.fromJson(Map<String, dynamic> json) => Tutor(
        addTutor: json["add_tutor"],
        changeTutor: json["change_tutor"],
        deleteTutor: json["delete_tutor"],
        viewTutor: json["view_tutor"],
      );

  Map<String, dynamic> toJson() => {
        "add_tutor": addTutor,
        "change_tutor": changeTutor,
        "delete_tutor": deleteTutor,
        "view_tutor": viewTutor,
      };
}

class Tutoravailability {
  final bool addTutoravailability;
  final bool changeTutoravailability;
  final bool deleteTutoravailability;
  final bool viewTutoravailability;

  Tutoravailability({
    required this.addTutoravailability,
    required this.changeTutoravailability,
    required this.deleteTutoravailability,
    required this.viewTutoravailability,
  });

  Tutoravailability copyWith({
    bool? addTutoravailability,
    bool? changeTutoravailability,
    bool? deleteTutoravailability,
    bool? viewTutoravailability,
  }) =>
      Tutoravailability(
        addTutoravailability: addTutoravailability ?? this.addTutoravailability,
        changeTutoravailability:
            changeTutoravailability ?? this.changeTutoravailability,
        deleteTutoravailability:
            deleteTutoravailability ?? this.deleteTutoravailability,
        viewTutoravailability:
            viewTutoravailability ?? this.viewTutoravailability,
      );

  factory Tutoravailability.fromRawJson(String str) =>
      Tutoravailability.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Tutoravailability.fromJson(Map<String, dynamic> json) =>
      Tutoravailability(
        addTutoravailability: json["add_tutoravailability"],
        changeTutoravailability: json["change_tutoravailability"],
        deleteTutoravailability: json["delete_tutoravailability"],
        viewTutoravailability: json["view_tutoravailability"],
      );

  Map<String, dynamic> toJson() => {
        "add_tutoravailability": addTutoravailability,
        "change_tutoravailability": changeTutoravailability,
        "delete_tutoravailability": deleteTutoravailability,
        "view_tutoravailability": viewTutoravailability,
      };
}

class Tutorbooked {
  final bool addTutorbooked;
  final bool changeTutorbooked;
  final bool deleteTutorbooked;
  final bool viewTutorbooked;

  Tutorbooked({
    required this.addTutorbooked,
    required this.changeTutorbooked,
    required this.deleteTutorbooked,
    required this.viewTutorbooked,
  });

  Tutorbooked copyWith({
    bool? addTutorbooked,
    bool? changeTutorbooked,
    bool? deleteTutorbooked,
    bool? viewTutorbooked,
  }) =>
      Tutorbooked(
        addTutorbooked: addTutorbooked ?? this.addTutorbooked,
        changeTutorbooked: changeTutorbooked ?? this.changeTutorbooked,
        deleteTutorbooked: deleteTutorbooked ?? this.deleteTutorbooked,
        viewTutorbooked: viewTutorbooked ?? this.viewTutorbooked,
      );

  factory Tutorbooked.fromRawJson(String str) =>
      Tutorbooked.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Tutorbooked.fromJson(Map<String, dynamic> json) => Tutorbooked(
        addTutorbooked: json["add_tutorbooked"],
        changeTutorbooked: json["change_tutorbooked"],
        deleteTutorbooked: json["delete_tutorbooked"],
        viewTutorbooked: json["view_tutorbooked"],
      );

  Map<String, dynamic> toJson() => {
        "add_tutorbooked": addTutorbooked,
        "change_tutorbooked": changeTutorbooked,
        "delete_tutorbooked": deleteTutorbooked,
        "view_tutorbooked": viewTutorbooked,
      };
}

class Tutorcontract {
  final bool addTutorcontract;
  final bool changeTutorcontract;
  final bool deleteTutorcontract;
  final bool viewTutorcontract;

  Tutorcontract({
    required this.addTutorcontract,
    required this.changeTutorcontract,
    required this.deleteTutorcontract,
    required this.viewTutorcontract,
  });

  Tutorcontract copyWith({
    bool? addTutorcontract,
    bool? changeTutorcontract,
    bool? deleteTutorcontract,
    bool? viewTutorcontract,
  }) =>
      Tutorcontract(
        addTutorcontract: addTutorcontract ?? this.addTutorcontract,
        changeTutorcontract: changeTutorcontract ?? this.changeTutorcontract,
        deleteTutorcontract: deleteTutorcontract ?? this.deleteTutorcontract,
        viewTutorcontract: viewTutorcontract ?? this.viewTutorcontract,
      );

  factory Tutorcontract.fromRawJson(String str) =>
      Tutorcontract.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Tutorcontract.fromJson(Map<String, dynamic> json) => Tutorcontract(
        addTutorcontract: json["add_tutorcontract"],
        changeTutorcontract: json["change_tutorcontract"],
        deleteTutorcontract: json["delete_tutorcontract"],
        viewTutorcontract: json["view_tutorcontract"],
      );

  Map<String, dynamic> toJson() => {
        "add_tutorcontract": addTutorcontract,
        "change_tutorcontract": changeTutorcontract,
        "delete_tutorcontract": deleteTutorcontract,
        "view_tutorcontract": viewTutorcontract,
      };
}

class Tutoreducation {
  final bool addTutoreducation;
  final bool changeTutoreducation;
  final bool deleteTutoreducation;
  final bool viewTutoreducation;

  Tutoreducation({
    required this.addTutoreducation,
    required this.changeTutoreducation,
    required this.deleteTutoreducation,
    required this.viewTutoreducation,
  });

  Tutoreducation copyWith({
    bool? addTutoreducation,
    bool? changeTutoreducation,
    bool? deleteTutoreducation,
    bool? viewTutoreducation,
  }) =>
      Tutoreducation(
        addTutoreducation: addTutoreducation ?? this.addTutoreducation,
        changeTutoreducation: changeTutoreducation ?? this.changeTutoreducation,
        deleteTutoreducation: deleteTutoreducation ?? this.deleteTutoreducation,
        viewTutoreducation: viewTutoreducation ?? this.viewTutoreducation,
      );

  factory Tutoreducation.fromRawJson(String str) =>
      Tutoreducation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Tutoreducation.fromJson(Map<String, dynamic> json) => Tutoreducation(
        addTutoreducation: json["add_tutoreducation"],
        changeTutoreducation: json["change_tutoreducation"],
        deleteTutoreducation: json["delete_tutoreducation"],
        viewTutoreducation: json["view_tutoreducation"],
      );

  Map<String, dynamic> toJson() => {
        "add_tutoreducation": addTutoreducation,
        "change_tutoreducation": changeTutoreducation,
        "delete_tutoreducation": deleteTutoreducation,
        "view_tutoreducation": viewTutoreducation,
      };
}

class Tutorexperience {
  final bool addTutorexperience;
  final bool changeTutorexperience;
  final bool deleteTutorexperience;
  final bool viewTutorexperience;

  Tutorexperience({
    required this.addTutorexperience,
    required this.changeTutorexperience,
    required this.deleteTutorexperience,
    required this.viewTutorexperience,
  });

  Tutorexperience copyWith({
    bool? addTutorexperience,
    bool? changeTutorexperience,
    bool? deleteTutorexperience,
    bool? viewTutorexperience,
  }) =>
      Tutorexperience(
        addTutorexperience: addTutorexperience ?? this.addTutorexperience,
        changeTutorexperience:
            changeTutorexperience ?? this.changeTutorexperience,
        deleteTutorexperience:
            deleteTutorexperience ?? this.deleteTutorexperience,
        viewTutorexperience: viewTutorexperience ?? this.viewTutorexperience,
      );

  factory Tutorexperience.fromRawJson(String str) =>
      Tutorexperience.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Tutorexperience.fromJson(Map<String, dynamic> json) =>
      Tutorexperience(
        addTutorexperience: json["add_tutorexperience"],
        changeTutorexperience: json["change_tutorexperience"],
        deleteTutorexperience: json["delete_tutorexperience"],
        viewTutorexperience: json["view_tutorexperience"],
      );

  Map<String, dynamic> toJson() => {
        "add_tutorexperience": addTutorexperience,
        "change_tutorexperience": changeTutorexperience,
        "delete_tutorexperience": deleteTutorexperience,
        "view_tutorexperience": viewTutorexperience,
      };
}

class Tutorrating {
  final bool addTutorrating;
  final bool changeTutorrating;
  final bool deleteTutorrating;
  final bool viewTutorrating;

  Tutorrating({
    required this.addTutorrating,
    required this.changeTutorrating,
    required this.deleteTutorrating,
    required this.viewTutorrating,
  });

  Tutorrating copyWith({
    bool? addTutorrating,
    bool? changeTutorrating,
    bool? deleteTutorrating,
    bool? viewTutorrating,
  }) =>
      Tutorrating(
        addTutorrating: addTutorrating ?? this.addTutorrating,
        changeTutorrating: changeTutorrating ?? this.changeTutorrating,
        deleteTutorrating: deleteTutorrating ?? this.deleteTutorrating,
        viewTutorrating: viewTutorrating ?? this.viewTutorrating,
      );

  factory Tutorrating.fromRawJson(String str) =>
      Tutorrating.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Tutorrating.fromJson(Map<String, dynamic> json) => Tutorrating(
        addTutorrating: json["add_tutorrating"],
        changeTutorrating: json["change_tutorrating"],
        deleteTutorrating: json["delete_tutorrating"],
        viewTutorrating: json["view_tutorrating"],
      );

  Map<String, dynamic> toJson() => {
        "add_tutorrating": addTutorrating,
        "change_tutorrating": changeTutorrating,
        "delete_tutorrating": deleteTutorrating,
        "view_tutorrating": viewTutorrating,
      };
}

class Tutorsubjects {
  final bool addTutorsubjects;
  final bool changeTutorsubjects;
  final bool deleteTutorsubjects;
  final bool viewTutorsubjects;

  Tutorsubjects({
    required this.addTutorsubjects,
    required this.changeTutorsubjects,
    required this.deleteTutorsubjects,
    required this.viewTutorsubjects,
  });

  Tutorsubjects copyWith({
    bool? addTutorsubjects,
    bool? changeTutorsubjects,
    bool? deleteTutorsubjects,
    bool? viewTutorsubjects,
  }) =>
      Tutorsubjects(
        addTutorsubjects: addTutorsubjects ?? this.addTutorsubjects,
        changeTutorsubjects: changeTutorsubjects ?? this.changeTutorsubjects,
        deleteTutorsubjects: deleteTutorsubjects ?? this.deleteTutorsubjects,
        viewTutorsubjects: viewTutorsubjects ?? this.viewTutorsubjects,
      );

  factory Tutorsubjects.fromRawJson(String str) =>
      Tutorsubjects.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Tutorsubjects.fromJson(Map<String, dynamic> json) => Tutorsubjects(
        addTutorsubjects: json["add_tutorsubjects"],
        changeTutorsubjects: json["change_tutorsubjects"],
        deleteTutorsubjects: json["delete_tutorsubjects"],
        viewTutorsubjects: json["view_tutorsubjects"],
      );

  Map<String, dynamic> toJson() => {
        "add_tutorsubjects": addTutorsubjects,
        "change_tutorsubjects": changeTutorsubjects,
        "delete_tutorsubjects": deleteTutorsubjects,
        "view_tutorsubjects": viewTutorsubjects,
      };
}

class User {
  final bool addUser;
  final bool changeUser;
  final bool deleteUser;
  final bool viewUser;

  User({
    required this.addUser,
    required this.changeUser,
    required this.deleteUser,
    required this.viewUser,
  });

  User copyWith({
    bool? addUser,
    bool? changeUser,
    bool? deleteUser,
    bool? viewUser,
  }) =>
      User(
        addUser: addUser ?? this.addUser,
        changeUser: changeUser ?? this.changeUser,
        deleteUser: deleteUser ?? this.deleteUser,
        viewUser: viewUser ?? this.viewUser,
      );

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        addUser: json["add_user"],
        changeUser: json["change_user"],
        deleteUser: json["delete_user"],
        viewUser: json["view_user"],
      );

  Map<String, dynamic> toJson() => {
        "add_user": addUser,
        "change_user": changeUser,
        "delete_user": deleteUser,
        "view_user": viewUser,
      };
}

class Useractivity {
  final bool addUseractivity;
  final bool changeUseractivity;
  final bool deleteUseractivity;
  final bool viewUseractivity;

  Useractivity({
    required this.addUseractivity,
    required this.changeUseractivity,
    required this.deleteUseractivity,
    required this.viewUseractivity,
  });

  Useractivity copyWith({
    bool? addUseractivity,
    bool? changeUseractivity,
    bool? deleteUseractivity,
    bool? viewUseractivity,
  }) =>
      Useractivity(
        addUseractivity: addUseractivity ?? this.addUseractivity,
        changeUseractivity: changeUseractivity ?? this.changeUseractivity,
        deleteUseractivity: deleteUseractivity ?? this.deleteUseractivity,
        viewUseractivity: viewUseractivity ?? this.viewUseractivity,
      );

  factory Useractivity.fromRawJson(String str) =>
      Useractivity.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Useractivity.fromJson(Map<String, dynamic> json) => Useractivity(
        addUseractivity: json["add_useractivity"],
        changeUseractivity: json["change_useractivity"],
        deleteUseractivity: json["delete_useractivity"],
        viewUseractivity: json["view_useractivity"],
      );

  Map<String, dynamic> toJson() => {
        "add_useractivity": addUseractivity,
        "change_useractivity": changeUseractivity,
        "delete_useractivity": deleteUseractivity,
        "view_useractivity": viewUseractivity,
      };
}

class Userlogintrack {
  final bool addUserlogintrack;
  final bool changeUserlogintrack;
  final bool deleteUserlogintrack;
  final bool viewUserlogintrack;

  Userlogintrack({
    required this.addUserlogintrack,
    required this.changeUserlogintrack,
    required this.deleteUserlogintrack,
    required this.viewUserlogintrack,
  });

  Userlogintrack copyWith({
    bool? addUserlogintrack,
    bool? changeUserlogintrack,
    bool? deleteUserlogintrack,
    bool? viewUserlogintrack,
  }) =>
      Userlogintrack(
        addUserlogintrack: addUserlogintrack ?? this.addUserlogintrack,
        changeUserlogintrack: changeUserlogintrack ?? this.changeUserlogintrack,
        deleteUserlogintrack: deleteUserlogintrack ?? this.deleteUserlogintrack,
        viewUserlogintrack: viewUserlogintrack ?? this.viewUserlogintrack,
      );

  factory Userlogintrack.fromRawJson(String str) =>
      Userlogintrack.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Userlogintrack.fromJson(Map<String, dynamic> json) => Userlogintrack(
        addUserlogintrack: json["add_userlogintrack"],
        changeUserlogintrack: json["change_userlogintrack"],
        deleteUserlogintrack: json["delete_userlogintrack"],
        viewUserlogintrack: json["view_userlogintrack"],
      );

  Map<String, dynamic> toJson() => {
        "add_userlogintrack": addUserlogintrack,
        "change_userlogintrack": changeUserlogintrack,
        "delete_userlogintrack": deleteUserlogintrack,
        "view_userlogintrack": viewUserlogintrack,
      };
}

class Usersocialauth {
  final bool addUsersocialauth;
  final bool changeUsersocialauth;
  final bool deleteUsersocialauth;
  final bool viewUsersocialauth;

  Usersocialauth({
    required this.addUsersocialauth,
    required this.changeUsersocialauth,
    required this.deleteUsersocialauth,
    required this.viewUsersocialauth,
  });

  Usersocialauth copyWith({
    bool? addUsersocialauth,
    bool? changeUsersocialauth,
    bool? deleteUsersocialauth,
    bool? viewUsersocialauth,
  }) =>
      Usersocialauth(
        addUsersocialauth: addUsersocialauth ?? this.addUsersocialauth,
        changeUsersocialauth: changeUsersocialauth ?? this.changeUsersocialauth,
        deleteUsersocialauth: deleteUsersocialauth ?? this.deleteUsersocialauth,
        viewUsersocialauth: viewUsersocialauth ?? this.viewUsersocialauth,
      );

  factory Usersocialauth.fromRawJson(String str) =>
      Usersocialauth.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Usersocialauth.fromJson(Map<String, dynamic> json) => Usersocialauth(
        addUsersocialauth: json["add_usersocialauth"],
        changeUsersocialauth: json["change_usersocialauth"],
        deleteUsersocialauth: json["delete_usersocialauth"],
        viewUsersocialauth: json["view_usersocialauth"],
      );

  Map<String, dynamic> toJson() => {
        "add_usersocialauth": addUsersocialauth,
        "change_usersocialauth": changeUsersocialauth,
        "delete_usersocialauth": deleteUsersocialauth,
        "view_usersocialauth": viewUsersocialauth,
      };
}

class Userverifytoken {
  final bool addUserverifytoken;
  final bool changeUserverifytoken;
  final bool deleteUserverifytoken;
  final bool viewUserverifytoken;

  Userverifytoken({
    required this.addUserverifytoken,
    required this.changeUserverifytoken,
    required this.deleteUserverifytoken,
    required this.viewUserverifytoken,
  });

  Userverifytoken copyWith({
    bool? addUserverifytoken,
    bool? changeUserverifytoken,
    bool? deleteUserverifytoken,
    bool? viewUserverifytoken,
  }) =>
      Userverifytoken(
        addUserverifytoken: addUserverifytoken ?? this.addUserverifytoken,
        changeUserverifytoken:
            changeUserverifytoken ?? this.changeUserverifytoken,
        deleteUserverifytoken:
            deleteUserverifytoken ?? this.deleteUserverifytoken,
        viewUserverifytoken: viewUserverifytoken ?? this.viewUserverifytoken,
      );

  factory Userverifytoken.fromRawJson(String str) =>
      Userverifytoken.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Userverifytoken.fromJson(Map<String, dynamic> json) =>
      Userverifytoken(
        addUserverifytoken: json["add_userverifytoken"],
        changeUserverifytoken: json["change_userverifytoken"],
        deleteUserverifytoken: json["delete_userverifytoken"],
        viewUserverifytoken: json["view_userverifytoken"],
      );

  Map<String, dynamic> toJson() => {
        "add_userverifytoken": addUserverifytoken,
        "change_userverifytoken": changeUserverifytoken,
        "delete_userverifytoken": deleteUserverifytoken,
        "view_userverifytoken": viewUserverifytoken,
      };
}

class Uservisit {
  final bool addUservisit;
  final bool changeUservisit;
  final bool deleteUservisit;
  final bool viewUservisit;

  Uservisit({
    required this.addUservisit,
    required this.changeUservisit,
    required this.deleteUservisit,
    required this.viewUservisit,
  });

  Uservisit copyWith({
    bool? addUservisit,
    bool? changeUservisit,
    bool? deleteUservisit,
    bool? viewUservisit,
  }) =>
      Uservisit(
        addUservisit: addUservisit ?? this.addUservisit,
        changeUservisit: changeUservisit ?? this.changeUservisit,
        deleteUservisit: deleteUservisit ?? this.deleteUservisit,
        viewUservisit: viewUservisit ?? this.viewUservisit,
      );

  factory Uservisit.fromRawJson(String str) =>
      Uservisit.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Uservisit.fromJson(Map<String, dynamic> json) => Uservisit(
        addUservisit: json["add_uservisit"],
        changeUservisit: json["change_uservisit"],
        deleteUservisit: json["delete_uservisit"],
        viewUservisit: json["view_uservisit"],
      );

  Map<String, dynamic> toJson() => {
        "add_uservisit": addUservisit,
        "change_uservisit": changeUservisit,
        "delete_uservisit": deleteUservisit,
        "view_uservisit": viewUservisit,
      };
}

class Video {
  final bool addVideo;
  final bool changeVideo;
  final bool deleteVideo;
  final bool viewVideo;

  Video({
    required this.addVideo,
    required this.changeVideo,
    required this.deleteVideo,
    required this.viewVideo,
  });

  Video copyWith({
    bool? addVideo,
    bool? changeVideo,
    bool? deleteVideo,
    bool? viewVideo,
  }) =>
      Video(
        addVideo: addVideo ?? this.addVideo,
        changeVideo: changeVideo ?? this.changeVideo,
        deleteVideo: deleteVideo ?? this.deleteVideo,
        viewVideo: viewVideo ?? this.viewVideo,
      );

  factory Video.fromRawJson(String str) => Video.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Video.fromJson(Map<String, dynamic> json) => Video(
        addVideo: json["add_video"],
        changeVideo: json["change_video"],
        deleteVideo: json["delete_video"],
        viewVideo: json["view_video"],
      );

  Map<String, dynamic> toJson() => {
        "add_video": addVideo,
        "change_video": changeVideo,
        "delete_video": deleteVideo,
        "view_video": viewVideo,
      };
}

class Voucher {
  final bool addVoucher;
  final bool changeVoucher;
  final bool deleteVoucher;
  final bool viewVoucher;

  Voucher({
    required this.addVoucher,
    required this.changeVoucher,
    required this.deleteVoucher,
    required this.viewVoucher,
  });

  Voucher copyWith({
    bool? addVoucher,
    bool? changeVoucher,
    bool? deleteVoucher,
    bool? viewVoucher,
  }) =>
      Voucher(
        addVoucher: addVoucher ?? this.addVoucher,
        changeVoucher: changeVoucher ?? this.changeVoucher,
        deleteVoucher: deleteVoucher ?? this.deleteVoucher,
        viewVoucher: viewVoucher ?? this.viewVoucher,
      );

  factory Voucher.fromRawJson(String str) => Voucher.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Voucher.fromJson(Map<String, dynamic> json) => Voucher(
        addVoucher: json["add_voucher"],
        changeVoucher: json["change_voucher"],
        deleteVoucher: json["delete_voucher"],
        viewVoucher: json["view_voucher"],
      );

  Map<String, dynamic> toJson() => {
        "add_voucher": addVoucher,
        "change_voucher": changeVoucher,
        "delete_voucher": deleteVoucher,
        "view_voucher": viewVoucher,
      };
}

class Voucherhistory {
  final bool addVoucherhistory;
  final bool changeVoucherhistory;
  final bool deleteVoucherhistory;
  final bool viewVoucherhistory;

  Voucherhistory({
    required this.addVoucherhistory,
    required this.changeVoucherhistory,
    required this.deleteVoucherhistory,
    required this.viewVoucherhistory,
  });

  Voucherhistory copyWith({
    bool? addVoucherhistory,
    bool? changeVoucherhistory,
    bool? deleteVoucherhistory,
    bool? viewVoucherhistory,
  }) =>
      Voucherhistory(
        addVoucherhistory: addVoucherhistory ?? this.addVoucherhistory,
        changeVoucherhistory: changeVoucherhistory ?? this.changeVoucherhistory,
        deleteVoucherhistory: deleteVoucherhistory ?? this.deleteVoucherhistory,
        viewVoucherhistory: viewVoucherhistory ?? this.viewVoucherhistory,
      );

  factory Voucherhistory.fromRawJson(String str) =>
      Voucherhistory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Voucherhistory.fromJson(Map<String, dynamic> json) => Voucherhistory(
        addVoucherhistory: json["add_voucherhistory"],
        changeVoucherhistory: json["change_voucherhistory"],
        deleteVoucherhistory: json["delete_voucherhistory"],
        viewVoucherhistory: json["view_voucherhistory"],
      );

  Map<String, dynamic> toJson() => {
        "add_voucherhistory": addVoucherhistory,
        "change_voucherhistory": changeVoucherhistory,
        "delete_voucherhistory": deleteVoucherhistory,
        "view_voucherhistory": viewVoucherhistory,
      };
}
