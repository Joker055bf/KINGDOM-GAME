.class abstract Lcom/openmediation/sdk/utils/request/network/BaseTask;
.super Ljava/lang/Object;


# instance fields
.field protected mConnection:Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;

.field protected mRequest:Lcom/openmediation/sdk/utils/request/network/Request;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/utils/request/network/Request;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iput-object p1, p0, Lcom/openmediation/sdk/utils/request/network/BaseTask;->mRequest:Lcom/openmediation/sdk/utils/request/network/Request;

    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Request;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/openmediation/sdk/utils/request/network/connect/HttpConnection;

    invoke-direct {p1}, Lcom/openmediation/sdk/utils/request/network/connect/HttpConnection;-><init>()V

    goto :goto_0

    :cond_0
    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/openmediation/sdk/utils/request/network/connect/HttpsConnection;

    invoke-direct {p1}, Lcom/openmediation/sdk/utils/request/network/connect/HttpsConnection;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/openmediation/sdk/utils/request/network/BaseTask;->mConnection:Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "BaseTask"

    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method
