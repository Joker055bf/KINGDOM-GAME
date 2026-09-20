.class public final Lcom/vk/id/internal/context/DefaultActivityStarter;
.super Ljava/lang/Object;
.source "DefaultActivityStarter.kt"

# interfaces
.implements Lcom/vk/id/internal/context/InternalVKIDActivityStarter;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vk/id/internal/context/DefaultActivityStarter;",
        "Lcom/vk/id/internal/context/InternalVKIDActivityStarter;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "startActivity",
        "",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/internal/context/DefaultActivityStarter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/vk/id/internal/auth/AuthActivity;->Companion:Lcom/vk/id/internal/auth/AuthActivity$Companion;

    iget-object v1, p0, Lcom/vk/id/internal/context/DefaultActivityStarter;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/vk/id/internal/auth/AuthActivity$Companion;->startForAuth$vkid_release(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
