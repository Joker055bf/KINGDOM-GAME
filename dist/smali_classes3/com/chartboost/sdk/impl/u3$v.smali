.class public Lcom/chartboost/sdk/impl/u3$v;
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
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u3$v;->a:Lcom/chartboost/sdk/impl/u3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "JS->Native Track VAST event message: "

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u3$v;->a:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u3;->c:Lorg/json/JSONObject;

    const-string v2, "event"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/chartboost/sdk/impl/u3$v;->a:Lcom/chartboost/sdk/impl/u3;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/u3;->b:Lcom/chartboost/sdk/impl/p1;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/p1;->f(Ljava/lang/String;)V

    .line 3
    const-class v2, Lcom/chartboost/sdk/impl/s1;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Exception occured while parsing the message for webview tracking VAST events"

    .line 5
    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
