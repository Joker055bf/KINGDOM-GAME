.class Lcom/openmediation/sdk/core/InitImp$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/openmediation/sdk/InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/core/InitImp;->reInitSDK(Lcom/openmediation/sdk/InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/openmediation/sdk/InitCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/InitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/InitImp$1;->val$callback:Lcom/openmediation/sdk/InitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/InitImp$1;->val$callback:Lcom/openmediation/sdk/InitCallback;

    invoke-interface {v0, p1}, Lcom/openmediation/sdk/InitCallback;->onError(Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    const-string v0, "reInitSDK success"

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/InitImp$1;->val$callback:Lcom/openmediation/sdk/InitCallback;

    invoke-interface {v0}, Lcom/openmediation/sdk/InitCallback;->onSuccess()V

    return-void
.end method
