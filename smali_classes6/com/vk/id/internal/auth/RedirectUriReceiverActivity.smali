.class public final Lcom/vk/id/internal/auth/RedirectUriReceiverActivity;
.super Landroid/app/Activity;
.source "RedirectUriReceiverActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/RedirectUriReceiverActivity;",
        "Landroid/app/Activity;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    invoke-virtual {p0}, Lcom/vk/id/internal/auth/RedirectUriReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 15
    sget-object v0, Lcom/vk/id/internal/auth/AuthActivity;->Companion:Lcom/vk/id/internal/auth/AuthActivity$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/vk/id/internal/auth/AuthActivity$Companion;->createRedirectUriHandlingIntent$vkid_release(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/vk/id/internal/auth/RedirectUriReceiverActivity;->startActivity(Landroid/content/Intent;)V

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/vk/id/internal/auth/RedirectUriReceiverActivity;->finish()V

    return-void
.end method
