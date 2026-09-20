.class public final Lru/ok/tracer/lite/upload/TracerDropHolder;
.super Ljava/lang/Object;
.source "TracerDropHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/ok/tracer/lite/upload/TracerDropHolder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lru/ok/tracer/lite/upload/TracerDropHolder;",
        "",
        "context",
        "Landroid/content/Context;",
        "libraryPackageName",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "dropManager",
        "Lru/ok/tracer/base/drop/DropManager;",
        "getDropManager",
        "()Lru/ok/tracer/base/drop/DropManager;",
        "dropManager$delegate",
        "Lkotlin/Lazy;",
        "Companion",
        "tracer-lite-commons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lru/ok/tracer/lite/upload/TracerDropHolder$Companion;


# instance fields
.field private final dropManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/ok/tracer/lite/upload/TracerDropHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/upload/TracerDropHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/ok/tracer/lite/upload/TracerDropHolder;->Companion:Lru/ok/tracer/lite/upload/TracerDropHolder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryPackageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lru/ok/tracer/lite/upload/TracerDropHolder$dropManager$2;

    invoke-direct {v0, p1, p2}, Lru/ok/tracer/lite/upload/TracerDropHolder$dropManager$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lru/ok/tracer/lite/upload/TracerDropHolder;->dropManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getDropManager(Lru/ok/tracer/lite/upload/TracerDropHolder;)Lru/ok/tracer/base/drop/DropManager;
    .locals 0

    .line 8
    invoke-direct {p0}, Lru/ok/tracer/lite/upload/TracerDropHolder;->getDropManager()Lru/ok/tracer/base/drop/DropManager;

    move-result-object p0

    return-object p0
.end method

.method private final getDropManager()Lru/ok/tracer/base/drop/DropManager;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/ok/tracer/lite/upload/TracerDropHolder;->dropManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/ok/tracer/base/drop/DropManager;

    return-object v0
.end method
