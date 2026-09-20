.class public final Lcom/vk/id/internal/auth/app/AppAuthProvider;
.super Ljava/lang/Object;
.source "AppAuthProvider.kt"

# interfaces
.implements Lcom/vk/id/internal/auth/VKIDAuthProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/app/AppAuthProvider;",
        "Lcom/vk/id/internal/auth/VKIDAuthProvider;",
        "starter",
        "Lcom/vk/id/internal/context/InternalVKIDActivityStarter;",
        "appPackage",
        "",
        "<init>",
        "(Lcom/vk/id/internal/context/InternalVKIDActivityStarter;Ljava/lang/String;)V",
        "auth",
        "",
        "authOptions",
        "Lcom/vk/id/internal/auth/AuthOptions;",
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
.field private final appPackage:Ljava/lang/String;

.field private final starter:Lcom/vk/id/internal/context/InternalVKIDActivityStarter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/vk/id/internal/context/InternalVKIDActivityStarter;Ljava/lang/String;)V
    .locals 1

    const-string v0, "starter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appPackage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/vk/id/internal/auth/app/AppAuthProvider;->starter:Lcom/vk/id/internal/context/InternalVKIDActivityStarter;

    .line 14
    iput-object p2, p0, Lcom/vk/id/internal/auth/app/AppAuthProvider;->appPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public auth(Lcom/vk/id/internal/auth/AuthOptions;)V
    .locals 2

    const-string v0, "authOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/vk/id/internal/auth/app/AppAuthProvider;->appPackage:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/vk/id/internal/auth/AuthOptionsKt;->toAuthUriCodeFlow(Lcom/vk/id/internal/auth/AuthOptions;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 19
    iget-object p1, p0, Lcom/vk/id/internal/auth/app/AppAuthProvider;->starter:Lcom/vk/id/internal/context/InternalVKIDActivityStarter;

    invoke-interface {p1, v0}, Lcom/vk/id/internal/context/InternalVKIDActivityStarter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
