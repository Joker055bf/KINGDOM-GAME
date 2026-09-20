.class public final Lcom/chartboost/sdk/impl/v4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/u4;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/v4;",
        "Lcom/chartboost/sdk/impl/u4;",
        "Lcom/chartboost/sdk/impl/w4;",
        "a",
        "Landroid/content/Context;",
        "context",
        "Lcom/chartboost/sdk/impl/a1;",
        "identity",
        "Lcom/chartboost/sdk/impl/h1;",
        "reachability",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Lcom/chartboost/sdk/impl/c5;",
        "sdkConfig",
        "Landroid/content/SharedPreferences;",
        "sharedPreferences",
        "Lcom/chartboost/sdk/impl/k5;",
        "timeSource",
        "Lcom/chartboost/sdk/impl/w1;",
        "carrierBuilder",
        "Lcom/chartboost/sdk/impl/f5;",
        "session",
        "Lcom/chartboost/sdk/impl/i4;",
        "privacyApi",
        "Lcom/chartboost/sdk/Mediation;",
        "mediation",
        "<init>",
        "(Landroid/content/Context;Lcom/chartboost/sdk/impl/a1;Lcom/chartboost/sdk/impl/h1;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/impl/k5;Lcom/chartboost/sdk/impl/w1;Lcom/chartboost/sdk/impl/f5;Lcom/chartboost/sdk/impl/i4;Lcom/chartboost/sdk/Mediation;)V",
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
.field public final a:Landroid/content/Context;

.field public final b:Lcom/chartboost/sdk/impl/a1;

.field public final c:Lcom/chartboost/sdk/impl/h1;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/impl/c5;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/content/SharedPreferences;

.field public final f:Lcom/chartboost/sdk/impl/k5;

.field public final g:Lcom/chartboost/sdk/impl/w1;

.field public final h:Lcom/chartboost/sdk/impl/f5;

.field public final i:Lcom/chartboost/sdk/impl/i4;

.field public final j:Lcom/chartboost/sdk/Mediation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/a1;Lcom/chartboost/sdk/impl/h1;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/impl/k5;Lcom/chartboost/sdk/impl/w1;Lcom/chartboost/sdk/impl/f5;Lcom/chartboost/sdk/impl/i4;Lcom/chartboost/sdk/Mediation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/chartboost/sdk/impl/a1;",
            "Lcom/chartboost/sdk/impl/h1;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/impl/c5;",
            ">;",
            "Landroid/content/SharedPreferences;",
            "Lcom/chartboost/sdk/impl/k5;",
            "Lcom/chartboost/sdk/impl/w1;",
            "Lcom/chartboost/sdk/impl/f5;",
            "Lcom/chartboost/sdk/impl/i4;",
            "Lcom/chartboost/sdk/Mediation;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reachability"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sharedPreferences"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "timeSource"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "carrierBuilder"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "session"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyApi"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v4;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/v4;->b:Lcom/chartboost/sdk/impl/a1;

    .line 4
    iput-object p3, p0, Lcom/chartboost/sdk/impl/v4;->c:Lcom/chartboost/sdk/impl/h1;

    .line 5
    iput-object p4, p0, Lcom/chartboost/sdk/impl/v4;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    iput-object p5, p0, Lcom/chartboost/sdk/impl/v4;->e:Landroid/content/SharedPreferences;

    .line 7
    iput-object p6, p0, Lcom/chartboost/sdk/impl/v4;->f:Lcom/chartboost/sdk/impl/k5;

    .line 8
    iput-object p7, p0, Lcom/chartboost/sdk/impl/v4;->g:Lcom/chartboost/sdk/impl/w1;

    .line 9
    iput-object p8, p0, Lcom/chartboost/sdk/impl/v4;->h:Lcom/chartboost/sdk/impl/f5;

    .line 10
    iput-object p9, p0, Lcom/chartboost/sdk/impl/v4;->i:Lcom/chartboost/sdk/impl/i4;

    .line 11
    iput-object p10, p0, Lcom/chartboost/sdk/impl/v4;->j:Lcom/chartboost/sdk/Mediation;

    return-void
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/w4;
    .locals 13

    .line 1
    new-instance v12, Lcom/chartboost/sdk/impl/w4;

    .line 2
    sget-object v0, Lcom/chartboost/sdk/impl/a2;->k:Lcom/chartboost/sdk/impl/a2;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l2;->b()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l2;->c()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v4;->b:Lcom/chartboost/sdk/impl/a1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/a1;->f()Lcom/chartboost/sdk/impl/e3;

    move-result-object v3

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v4;->c:Lcom/chartboost/sdk/impl/h1;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/v4;->a:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/chartboost/sdk/impl/v2;->toReachabilityBodyFields(Lcom/chartboost/sdk/impl/h1;Landroid/content/Context;)Lcom/chartboost/sdk/impl/q4;

    move-result-object v4

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v4;->g:Lcom/chartboost/sdk/impl/w1;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/v4;->a:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/w1;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/v1;

    move-result-object v5

    .line 7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v4;->h:Lcom/chartboost/sdk/impl/f5;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/f5;->h()Lcom/chartboost/sdk/impl/g5;

    move-result-object v6

    .line 8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v4;->f:Lcom/chartboost/sdk/impl/k5;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/v2;->toBodyFields(Lcom/chartboost/sdk/impl/k5;)Lcom/chartboost/sdk/impl/l5;

    move-result-object v7

    .line 9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v4;->i:Lcom/chartboost/sdk/impl/i4;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/i4;->g()Lcom/chartboost/sdk/impl/j4;

    move-result-object v8

    .line 10
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v4;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/c5;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/c5;->g()Lcom/chartboost/sdk/impl/f2;

    move-result-object v9

    .line 11
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v4;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/v2;->toDeviceBodyFields(Landroid/content/Context;)Lcom/chartboost/sdk/impl/m2;

    move-result-object v10

    .line 12
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v4;->j:Lcom/chartboost/sdk/Mediation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Mediation;->toMediationBodyFields()Lcom/chartboost/sdk/impl/t3;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v11, v0

    move-object v0, v12

    .line 13
    invoke-direct/range {v0 .. v11}, Lcom/chartboost/sdk/impl/w4;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/e3;Lcom/chartboost/sdk/impl/q4;Lcom/chartboost/sdk/impl/v1;Lcom/chartboost/sdk/impl/g5;Lcom/chartboost/sdk/impl/l5;Lcom/chartboost/sdk/impl/j4;Lcom/chartboost/sdk/impl/f2;Lcom/chartboost/sdk/impl/m2;Lcom/chartboost/sdk/impl/t3;)V

    return-object v12
.end method
