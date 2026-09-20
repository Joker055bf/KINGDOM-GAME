.class Lcom/openmediation/sdk/utils/request/network/SyncReq;
.super Lcom/openmediation/sdk/utils/request/network/BaseTask;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/utils/request/network/Request;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/utils/request/network/BaseTask;-><init>(Lcom/openmediation/sdk/utils/request/network/Request;)V

    return-void
.end method


# virtual methods
.method start()Lcom/openmediation/sdk/utils/request/network/Response;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/openmediation/sdk/utils/request/network/BaseTask;->mConnection:Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/openmediation/sdk/utils/request/network/BaseTask;->mRequest:Lcom/openmediation/sdk/utils/request/network/Request;

    invoke-virtual {v1, v2}, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->intercept(Lcom/openmediation/sdk/utils/request/network/Request;)Lcom/openmediation/sdk/utils/request/network/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "SyncReq"

    invoke-static {v2, v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
