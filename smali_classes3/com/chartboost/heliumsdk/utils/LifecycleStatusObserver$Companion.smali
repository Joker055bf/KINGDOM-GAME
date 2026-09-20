.class public final Lcom/chartboost/heliumsdk/utils/LifecycleStatusObserver$Companion;
.super Ljava/lang/Object;
.source "LifecycleStatusObserver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/heliumsdk/utils/LifecycleStatusObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/utils/LifecycleStatusObserver$Companion;",
        "",
        "()V",
        "status",
        "Lcom/chartboost/heliumsdk/utils/LifecycleStatus;",
        "getStatus",
        "()Lcom/chartboost/heliumsdk/utils/LifecycleStatus;",
        "setStatus",
        "(Lcom/chartboost/heliumsdk/utils/LifecycleStatus;)V",
        "Helium_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/chartboost/heliumsdk/utils/LifecycleStatusObserver$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/chartboost/heliumsdk/utils/LifecycleStatus;
    .locals 1

    .line 20
    invoke-static {}, Lcom/chartboost/heliumsdk/utils/LifecycleStatusObserver;->access$getStatus$cp()Lcom/chartboost/heliumsdk/utils/LifecycleStatus;

    move-result-object v0

    return-object v0
.end method

.method public final setStatus(Lcom/chartboost/heliumsdk/utils/LifecycleStatus;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {p1}, Lcom/chartboost/heliumsdk/utils/LifecycleStatusObserver;->access$setStatus$cp(Lcom/chartboost/heliumsdk/utils/LifecycleStatus;)V

    return-void
.end method
