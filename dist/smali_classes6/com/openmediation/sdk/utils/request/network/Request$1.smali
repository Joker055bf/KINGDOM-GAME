.class Lcom/openmediation/sdk/utils/request/network/Request$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/openmediation/sdk/utils/request/network/AsyncReq$OnTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/utils/request/network/Request;->performRequest(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/utils/request/network/Request;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/utils/request/network/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/request/network/Request$1;->this$0:Lcom/openmediation/sdk/utils/request/network/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Request$1;->this$0:Lcom/openmediation/sdk/utils/request/network/Request;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/request/network/Request;->access$1000(Lcom/openmediation/sdk/utils/request/network/Request;)Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Request$1;->this$0:Lcom/openmediation/sdk/utils/request/network/Request;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/request/network/Request;->access$1000(Lcom/openmediation/sdk/utils/request/network/Request;)Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;->onRequestFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/openmediation/sdk/utils/request/network/Response;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Request$1;->this$0:Lcom/openmediation/sdk/utils/request/network/Request;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/request/network/Request;->access$1000(Lcom/openmediation/sdk/utils/request/network/Request;)Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Request$1;->this$0:Lcom/openmediation/sdk/utils/request/network/Request;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/request/network/Request;->access$1000(Lcom/openmediation/sdk/utils/request/network/Request;)Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;->onRequestSuccess(Lcom/openmediation/sdk/utils/request/network/Response;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/openmediation/sdk/utils/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    :goto_0
    return-void
.end method
