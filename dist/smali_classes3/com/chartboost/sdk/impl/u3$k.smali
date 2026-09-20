.class public Lcom/chartboost/sdk/impl/u3$k;
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
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u3$k;->a:Lcom/chartboost/sdk/impl/u3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u3$k;->a:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v0, Lcom/chartboost/sdk/impl/u3;->b:Lcom/chartboost/sdk/impl/p1;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u3;->a()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/p1;->a(Lorg/json/JSONObject;Ljava/lang/Boolean;)Z

    goto :goto_0

    :cond_0
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Click command error"

    .line 4
    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
