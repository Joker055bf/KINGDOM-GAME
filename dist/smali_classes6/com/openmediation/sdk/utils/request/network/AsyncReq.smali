.class Lcom/openmediation/sdk/utils/request/network/AsyncReq;
.super Lcom/openmediation/sdk/utils/request/network/BaseTask;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/utils/request/network/AsyncReq$OnTaskCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/openmediation/sdk/utils/request/network/AsyncReq$OnTaskCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/utils/request/network/Request;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/utils/request/network/BaseTask;-><init>(Lcom/openmediation/sdk/utils/request/network/Request;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "AsyncReq"

    :try_start_0
    iget-object v1, p0, Lcom/openmediation/sdk/utils/request/network/BaseTask;->mConnection:Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/openmediation/sdk/utils/request/network/AsyncReq;->mCallback:Lcom/openmediation/sdk/utils/request/network/AsyncReq$OnTaskCallback;

    if-eqz v1, :cond_0

    const-string v2, "not http connection"

    invoke-interface {v1, v2}, Lcom/openmediation/sdk/utils/request/network/AsyncReq$OnTaskCallback;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v1, p0, Lcom/openmediation/sdk/utils/request/network/BaseTask;->mConnection:Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v0, v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/openmediation/sdk/utils/request/network/BaseTask;->mRequest:Lcom/openmediation/sdk/utils/request/network/Request;

    invoke-virtual {v1, v2}, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->intercept(Lcom/openmediation/sdk/utils/request/network/Request;)Lcom/openmediation/sdk/utils/request/network/Response;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/openmediation/sdk/utils/request/network/AsyncReq;->mCallback:Lcom/openmediation/sdk/utils/request/network/AsyncReq$OnTaskCallback;

    if-eqz v1, :cond_4

    const-string v2, "response is null"

    invoke-interface {v1, v2}, Lcom/openmediation/sdk/utils/request/network/AsyncReq$OnTaskCallback;->onError(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/openmediation/sdk/utils/request/network/AsyncReq;->mCallback:Lcom/openmediation/sdk/utils/request/network/AsyncReq$OnTaskCallback;

    if-eqz v2, :cond_4

    invoke-interface {v2, v1}, Lcom/openmediation/sdk/utils/request/network/AsyncReq$OnTaskCallback;->onSuccess(Lcom/openmediation/sdk/utils/request/network/Response;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/openmediation/sdk/utils/request/network/BaseTask;->mConnection:Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;

    if-eqz v1, :cond_7

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/openmediation/sdk/utils/request/network/AsyncReq;->mCallback:Lcom/openmediation/sdk/utils/request/network/AsyncReq$OnTaskCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_6

    iget-object v1, p0, Lcom/openmediation/sdk/utils/request/network/BaseTask;->mConnection:Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;

    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->cancel()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-static {v0, v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/openmediation/sdk/utils/request/network/AsyncReq$OnTaskCallback;->onError(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v1, p0, Lcom/openmediation/sdk/utils/request/network/BaseTask;->mConnection:Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;

    if-eqz v1, :cond_7

    :goto_3
    :try_start_6
    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->cancel()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    invoke-static {v0, v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    return-void

    :goto_5
    iget-object v2, p0, Lcom/openmediation/sdk/utils/request/network/BaseTask;->mConnection:Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;

    if-eqz v2, :cond_8

    :try_start_7
    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->cancel()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    :catch_4
    move-exception v2

    invoke-static {v0, v2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_6
    throw v1
.end method

.method public setCallback(Lcom/openmediation/sdk/utils/request/network/AsyncReq$OnTaskCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/request/network/AsyncReq;->mCallback:Lcom/openmediation/sdk/utils/request/network/AsyncReq$OnTaskCallback;

    return-void
.end method
