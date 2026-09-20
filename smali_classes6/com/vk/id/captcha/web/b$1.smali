.class final Lcom/vk/id/captcha/web/b$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NetworkConnectionObserver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/captcha/web/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/net/ConnectivityManager;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u000b\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Landroid/net/ConnectivityManager;",
        "a",
        "()Landroid/net/ConnectivityManager;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private synthetic a:Lcom/vk/id/captcha/web/b;


# direct methods
.method constructor <init>(Lcom/vk/id/captcha/web/b;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/id/captcha/web/b$1;->a:Lcom/vk/id/captcha/web/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/ConnectivityManager;
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/vk/id/captcha/web/b$1;->a:Lcom/vk/id/captcha/web/b;

    invoke-static {v0}, Lcom/vk/id/captcha/web/b;->a(Lcom/vk/id/captcha/web/b;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/vk/id/captcha/web/b$1;->a()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method
