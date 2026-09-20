.class public final Lcom/vk/id/test/InternalVKIDAuthStarter;
.super Ljava/lang/Object;
.source "InternalVKIDAuthStarter.kt"


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0003\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vk/id/test/InternalVKIDAuthStarter;",
        "",
        "<init>",
        "()V",
        "startAuth",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "vkid_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/vk/id/test/InternalVKIDAuthStarter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/id/test/InternalVKIDAuthStarter;

    invoke-direct {v0}, Lcom/vk/id/test/InternalVKIDAuthStarter;-><init>()V

    sput-object v0, Lcom/vk/id/test/InternalVKIDAuthStarter;->INSTANCE:Lcom/vk/id/test/InternalVKIDAuthStarter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final startAuth(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/vk/id/internal/auth/AuthActivity;->Companion:Lcom/vk/id/internal/auth/AuthActivity$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/vk/id/internal/auth/AuthActivity$Companion;->startForAuth$vkid_release(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
