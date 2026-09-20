.class public Lcom/chartboost/sdk/impl/u3$a;
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
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u3$a;->a:Lcom/chartboost/sdk/impl/u3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u3$a;->a:Lcom/chartboost/sdk/impl/u3;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/u3;->a:Lcom/chartboost/sdk/impl/q1;

    const-string v1, "NativeBridgeCommand"

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/q1;->onHideCustomView()V

    goto :goto_0

    :cond_0
    const-string v0, "Video completed command error - client"

    .line 4
    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u3$a;->a:Lcom/chartboost/sdk/impl/u3;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/u3;->b:Lcom/chartboost/sdk/impl/p1;

    if-eqz v0, :cond_1

    .line 8
    sget-object v1, Lcom/chartboost/sdk/impl/e4;->c:Lcom/chartboost/sdk/impl/e4;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/p1;->a(Lcom/chartboost/sdk/impl/e4;)V

    .line 9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u3$a;->a:Lcom/chartboost/sdk/impl/u3;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/u3;->b:Lcom/chartboost/sdk/impl/p1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p1;->F()V

    goto :goto_1

    :cond_1
    const-string v0, "Video completed command error - protocol"

    .line 11
    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
