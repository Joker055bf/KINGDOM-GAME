.class Lcom/openmediation/sdk/utils/crash/CrashUtil$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/utils/crash/CrashUtil;->uploadException(Lcom/openmediation/sdk/utils/model/Configurations;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/utils/crash/CrashUtil;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$config:Lcom/openmediation/sdk/utils/model/Configurations;

.field final synthetic val$errorMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/utils/crash/CrashUtil;Lcom/openmediation/sdk/utils/model/Configurations;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil$2;->this$0:Lcom/openmediation/sdk/utils/crash/CrashUtil;

    iput-object p2, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil$2;->val$config:Lcom/openmediation/sdk/utils/model/Configurations;

    iput-object p3, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil$2;->val$appKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil$2;->val$errorMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil$2;->this$0:Lcom/openmediation/sdk/utils/crash/CrashUtil;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->access$200(Lcom/openmediation/sdk/utils/crash/CrashUtil;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil$2;->val$config:Lcom/openmediation/sdk/utils/model/Configurations;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Configurations;->getApi()Lcom/openmediation/sdk/utils/model/ApiConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;->getEr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/openmediation/sdk/utils/request/RequestBuilder;

    invoke-direct {v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;-><init>()V

    const-string v2, "v"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v1

    const-string v2, "plat"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v1

    const-string v2, "sdkv"

    const-string v4, "2.6.6"

    invoke-virtual {v1, v2, v4}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v1

    const-string v2, "k"

    iget-object v4, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil$2;->val$appKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->format()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/utils/crash/CrashUtil$2;->val$errorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.openmediation.sdk"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v4, "UnknownError"

    :cond_2
    const-string v5, "\u0001"

    const-string v6, " "

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    aput-object v2, v5, v3

    invoke-static {v5}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->buildErrorRequestBody([Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {}, Lcom/openmediation/sdk/utils/request/HeaderUtils;->getBaseHeaders()Lcom/openmediation/sdk/utils/request/network/Headers;

    move-result-object v4

    invoke-static {}, Lcom/openmediation/sdk/utils/request/network/AdRequest;->post()Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v5

    new-instance v6, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;

    invoke-direct {v6, v2}, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;-><init>([B)V

    invoke-virtual {v5, v6}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->body(Lcom/openmediation/sdk/utils/request/network/RequestBody;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->headers(Lcom/openmediation/sdk/utils/request/network/Headers;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->url(Ljava/lang/String;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v2

    const/16 v4, 0x7530

    invoke-virtual {v2, v4}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->connectTimeout(I)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v2

    const v4, 0xea60

    invoke-virtual {v2, v4}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->readTimeout(I)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v2

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->performRequest(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "CrashUtil"

    invoke-static {v1, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method
