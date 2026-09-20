.class Lcom/openmediation/sdk/core/InitImp$InitRequestCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/core/InitImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitRequestCallback"
.end annotation


# instance fields
.field private configuration:Lcom/openmediation/sdk/InitConfiguration;

.field private mCallback:Lcom/openmediation/sdk/InitCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/openmediation/sdk/core/InitImp$InitRequestCallback;->configuration:Lcom/openmediation/sdk/InitConfiguration;

    iput-object p2, p0, Lcom/openmediation/sdk/core/InitImp$InitRequestCallback;->mCallback:Lcom/openmediation/sdk/InitCallback;

    return-void
.end method


# virtual methods
.method public onRequestFailed(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/openmediation/sdk/utils/error/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Init Request Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x87

    const/16 v3, 0xe

    invoke-direct {v0, v2, v1, v3}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request config failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDK Init Failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/InitImp$InitRequestCallback;->mCallback:Lcom/openmediation/sdk/InitCallback;

    invoke-static {p1, v0}, Lcom/openmediation/sdk/core/InitImp;->access$700(Lcom/openmediation/sdk/InitCallback;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method

.method public onRequestSuccess(Lcom/openmediation/sdk/utils/request/network/Response;)V
    .locals 6

    const-string v0, "Init Unknown Error: "

    const-string v1, "Init Server Error, Response Code: "

    :try_start_0
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Response;->code()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    new-instance v3, Lcom/openmediation/sdk/utils/error/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v4, 0x83

    invoke-direct {v3, v4, v1, v2}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Om init request config response code not 200 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/InitImp$InitRequestCallback;->mCallback:Lcom/openmediation/sdk/InitCallback;

    invoke-static {v1, v3}, Lcom/openmediation/sdk/core/InitImp;->access$700(Lcom/openmediation/sdk/InitCallback;Lcom/openmediation/sdk/utils/error/Error;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/openmediation/sdk/utils/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, Lcom/openmediation/sdk/utils/helper/ConfigurationHelper;->checkResponse(Lcom/openmediation/sdk/utils/request/network/Response;)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/openmediation/sdk/utils/error/Error;

    const-string v3, "Init Error: Response data check error"

    const/16 v4, 0xb

    const/16 v5, 0x84

    invoke-direct {v2, v5, v3, v4}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Om init response data is null: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/InitImp$InitRequestCallback;->mCallback:Lcom/openmediation/sdk/InitCallback;

    invoke-static {v1, v2}, Lcom/openmediation/sdk/core/InitImp;->access$700(Lcom/openmediation/sdk/InitCallback;Lcom/openmediation/sdk/utils/error/Error;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Lcom/openmediation/sdk/utils/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/openmediation/sdk/core/InitImp$InitRequestCallback;->configuration:Lcom/openmediation/sdk/InitConfiguration;

    iget-object v3, p0, Lcom/openmediation/sdk/core/InitImp$InitRequestCallback;->mCallback:Lcom/openmediation/sdk/InitCallback;

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3}, Lcom/openmediation/sdk/core/InitImp;->access$900(Lcom/openmediation/sdk/InitConfiguration;Ljava/lang/String;ZLcom/openmediation/sdk/InitCallback;)V

    invoke-static {}, Lcom/openmediation/sdk/core/OmCacheManager;->getInstance()Lcom/openmediation/sdk/core/OmCacheManager;

    move-result-object v2

    iget-object v3, p0, Lcom/openmediation/sdk/core/InitImp$InitRequestCallback;->configuration:Lcom/openmediation/sdk/InitConfiguration;

    invoke-virtual {v2, v3, v1}, Lcom/openmediation/sdk/core/OmCacheManager;->saveInitData(Lcom/openmediation/sdk/InitConfiguration;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    new-instance v2, Lcom/openmediation/sdk/utils/error/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xd

    const/16 v4, 0x86

    invoke-direct {v2, v4, v0, v3}, Lcom/openmediation/sdk/utils/error/Error;-><init>(ILjava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", request config exception:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/InitImp$InitRequestCallback;->mCallback:Lcom/openmediation/sdk/InitCallback;

    invoke-static {v0, v2}, Lcom/openmediation/sdk/core/InitImp;->access$700(Lcom/openmediation/sdk/InitCallback;Lcom/openmediation/sdk/utils/error/Error;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    invoke-static {p1}, Lcom/openmediation/sdk/utils/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v0

    invoke-static {p1}, Lcom/openmediation/sdk/utils/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method
