.class public final Lcom/chartboost/sdk/impl/j0$l;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/j0;-><init>(Lcom/chartboost/sdk/impl/d0;Lcom/chartboost/sdk/impl/t2;Lcom/chartboost/sdk/impl/k4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/chartboost/sdk/impl/c5;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Lcom/chartboost/sdk/impl/c5;",
        "a",
        "()Ljava/util/concurrent/atomic/AtomicReference;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/chartboost/sdk/impl/d0;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/sdk/impl/j0$l;->a:Lcom/chartboost/sdk/impl/d0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/impl/c5;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "{}"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/j0$l;->a:Lcom/chartboost/sdk/impl/d0;

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/d0;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "config"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 8
    :goto_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/chartboost/sdk/impl/c5;

    invoke-direct {v2, v1}, Lcom/chartboost/sdk/impl/c5;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/j0$l;->a()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    return-object v0
.end method
