.class public final Lcom/chartboost/sdk/impl/e$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/e;->b(Lcom/chartboost/sdk/Mediation;)Lcom/chartboost/sdk/impl/p3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/jvm/functions/Function8<",
        "-",
        "Lcom/chartboost/sdk/impl/m;",
        "-",
        "Lcom/chartboost/sdk/impl/s;",
        "-",
        "Landroid/os/Handler;",
        "-",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/chartboost/sdk/impl/c5;",
        ">;-",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "-",
        "Lcom/chartboost/sdk/impl/b;",
        "-",
        "Lcom/chartboost/sdk/impl/f5;",
        "-",
        "Lcom/chartboost/sdk/impl/u0;",
        "+",
        "Lcom/chartboost/sdk/impl/p3;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u000b\u001a>\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0000H\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000c"
    }
    d2 = {
        "Lkotlin/Function8;",
        "Lcom/chartboost/sdk/impl/m;",
        "Lcom/chartboost/sdk/impl/s;",
        "Landroid/os/Handler;",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Lcom/chartboost/sdk/impl/c5;",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "Lcom/chartboost/sdk/impl/b;",
        "Lcom/chartboost/sdk/impl/f5;",
        "Lcom/chartboost/sdk/impl/u0;",
        "Lcom/chartboost/sdk/impl/p3;",
        "a",
        "()Lkotlin/jvm/functions/Function8;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lcom/chartboost/sdk/impl/e$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/chartboost/sdk/impl/e$b;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/e$b;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/e$b;->a:Lcom/chartboost/sdk/impl/e$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/jvm/functions/Function8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function8<",
            "Lcom/chartboost/sdk/impl/m;",
            "Lcom/chartboost/sdk/impl/s;",
            "Landroid/os/Handler;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/impl/c5;",
            ">;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/chartboost/sdk/impl/b;",
            "Lcom/chartboost/sdk/impl/f5;",
            "Lcom/chartboost/sdk/impl/u0;",
            "Lcom/chartboost/sdk/impl/p3;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/chartboost/sdk/impl/e$b$a;->a:Lcom/chartboost/sdk/impl/e$b$a;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/e$b;->a()Lkotlin/jvm/functions/Function8;

    move-result-object v0

    return-object v0
.end method
