.class public final Lcom/chartboost/sdk/impl/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/x;-><init>(Landroid/media/MediaPlayer;Landroid/view/SurfaceView;Lcom/chartboost/sdk/impl/y;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/chartboost/sdk/impl/x$a",
        "Ljava/lang/Runnable;",
        "",
        "run",
        "",
        "toString",
        "Chartboost-9.2.0_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/chartboost/sdk/impl/x;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/x;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/sdk/impl/x$a;->a:Lcom/chartboost/sdk/impl/x;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x$a;->a:Lcom/chartboost/sdk/impl/x;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/x;->b(Lcom/chartboost/sdk/impl/x;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/chartboost/sdk/impl/x$a;->a:Lcom/chartboost/sdk/impl/x;

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/x;->a(Lcom/chartboost/sdk/impl/x;I)V

    .line 3
    invoke-static {v1}, Lcom/chartboost/sdk/impl/x;->a(Lcom/chartboost/sdk/impl/x;)Lcom/chartboost/sdk/impl/y;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/chartboost/sdk/impl/x;->c(Lcom/chartboost/sdk/impl/x;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/chartboost/sdk/impl/y;->a(I)V

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/x;->h()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "progress"

    return-object v0
.end method
