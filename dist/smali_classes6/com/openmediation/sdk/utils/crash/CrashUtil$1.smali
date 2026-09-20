.class Lcom/openmediation/sdk/utils/crash/CrashUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/utils/crash/CrashUtil;

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/utils/crash/CrashUtil;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil$1;->this$0:Lcom/openmediation/sdk/utils/crash/CrashUtil;

    iput-object p2, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil$1;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil$1;->val$throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil$1;->this$0:Lcom/openmediation/sdk/utils/crash/CrashUtil;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->access$200(Lcom/openmediation/sdk/utils/crash/CrashUtil;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil$1;->this$0:Lcom/openmediation/sdk/utils/crash/CrashUtil;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->access$200(Lcom/openmediation/sdk/utils/crash/CrashUtil;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil$1;->this$0:Lcom/openmediation/sdk/utils/crash/CrashUtil;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->access$200(Lcom/openmediation/sdk/utils/crash/CrashUtil;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    const-string v0, "2.6.6"

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil$1;->val$throwable:Ljava/lang/Throwable;

    invoke-static {v1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->access$300(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil$1;->this$0:Lcom/openmediation/sdk/utils/crash/CrashUtil;

    invoke-static {v1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->access$200(Lcom/openmediation/sdk/utils/crash/CrashUtil;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CrashUtil"

    invoke-static {v1, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method
