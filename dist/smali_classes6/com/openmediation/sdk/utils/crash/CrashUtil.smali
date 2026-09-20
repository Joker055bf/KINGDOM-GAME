.class public Lcom/openmediation/sdk/utils/crash/CrashUtil;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/utils/crash/CrashUtil$CrashUtilHolder;
    }
.end annotation


# static fields
.field private static final SP_NAME:Ljava/lang/String; = "OMCrashSP"


# instance fields
.field private isNe:Z

.field private mCrashSp:Landroid/content/SharedPreferences;

.field private mDefaultEh:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil;->isNe:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/utils/crash/CrashUtil$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/openmediation/sdk/utils/crash/CrashUtil;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil;->mCrashSp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getErrorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getErrorType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    const-string v1, ".*?(Exception|Error|Death)"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Caused by:"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    const-string v1, "CrashUtil"

    invoke-static {v1, p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :cond_1
    :goto_2
    return-object p0
.end method

.method public static getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil$CrashUtilHolder;->access$100()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v0

    return-object v0
.end method

.method private static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "2.6.6"

    invoke-direct {v1, v2, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v1, :cond_2

    instance-of v2, v1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public init()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "OMCrashSP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil;->mCrashSp:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/openmediation/sdk/utils/crash/CrashUtil;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil;->mDefaultEh:Ljava/lang/Thread$UncaughtExceptionHandler;

    :cond_0
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CrashUtil"

    invoke-static {v1, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public saveException(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil;->isNe:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/openmediation/sdk/utils/crash/CrashUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/utils/crash/CrashUtil$1;-><init>(Lcom/openmediation/sdk/utils/crash/CrashUtil;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/WorkExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setNe(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil;->isNe:Z

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p2, :cond_1

    :try_start_0
    instance-of v0, p2, Ljava/lang/reflect/UndeclaredThrowableException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil;->mDefaultEh:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    instance-of v1, v0, Lcom/openmediation/sdk/utils/crash/CrashUtil;

    if-nez v1, :cond_1

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "CrashUtil"

    invoke-static {p2, p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public uploadException(Lcom/openmediation/sdk/utils/model/Configurations;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil;->mCrashSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Configurations;->getApi()Lcom/openmediation/sdk/utils/model/ApiConfigurations;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Configurations;->getApi()Lcom/openmediation/sdk/utils/model/ApiConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;->getEr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil;->mCrashSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    new-instance v1, Lcom/openmediation/sdk/utils/crash/CrashUtil$2;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil$2;-><init>(Lcom/openmediation/sdk/utils/crash/CrashUtil;Lcom/openmediation/sdk/utils/model/Configurations;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/openmediation/sdk/utils/WorkExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void
.end method
