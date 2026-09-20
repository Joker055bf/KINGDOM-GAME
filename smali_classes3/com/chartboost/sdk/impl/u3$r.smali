.class public Lcom/chartboost/sdk/impl/u3$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/u3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/chartboost/sdk/impl/u3;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/u3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u3$r;->a:Lcom/chartboost/sdk/impl/u3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u3$r;->a:Lcom/chartboost/sdk/impl/u3;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/u3;->b:Lcom/chartboost/sdk/impl/p1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p1;->v()V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u3$r;->a:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v0, Lcom/chartboost/sdk/impl/u3;->b:Lcom/chartboost/sdk/impl/p1;

    iget-object v2, v0, Lcom/chartboost/sdk/impl/u3;->c:Lorg/json/JSONObject;

    const-string v3, "JS->Native Error message: "

    invoke-virtual {v0, v2, v3}, Lcom/chartboost/sdk/impl/u3;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/p1;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Error message is empty"

    .line 4
    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u3$r;->a:Lcom/chartboost/sdk/impl/u3;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/u3;->b:Lcom/chartboost/sdk/impl/p1;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 6
    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/p1;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
