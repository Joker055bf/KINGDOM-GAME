.class public final Lcom/vk/id/internal/auth/web/ContextUtils;
.super Ljava/lang/Object;
.source "ContextUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0003\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u0004\u0018\u00010\t*\u00020\u0007H\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/web/ContextUtils;",
        "",
        "<init>",
        "()V",
        "addNewTaskFlag",
        "Landroid/content/Intent;",
        "context",
        "Landroid/content/Context;",
        "toActivitySafe",
        "Landroid/app/Activity;",
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

.field public static final INSTANCE:Lcom/vk/id/internal/auth/web/ContextUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/id/internal/auth/web/ContextUtils;

    invoke-direct {v0}, Lcom/vk/id/internal/auth/web/ContextUtils;-><init>()V

    sput-object v0, Lcom/vk/id/internal/auth/web/ContextUtils;->INSTANCE:Lcom/vk/id/internal/auth/web/ContextUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final toActivitySafe(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    .line 18
    :goto_0
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    instance-of v1, p1, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 19
    check-cast p1, Landroid/app/Activity;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method


# virtual methods
.method public final addNewTaskFlag(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p2}, Lcom/vk/id/internal/auth/web/ContextUtils;->toActivitySafe(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    const/high16 p2, 0x10000000

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    return-object p1
.end method
