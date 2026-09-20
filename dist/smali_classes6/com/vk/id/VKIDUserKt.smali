.class public final Lcom/vk/id/VKIDUserKt;
.super Ljava/lang/Object;
.source "VKIDUser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "toVKIDUser",
        "Lcom/vk/id/VKIDUser;",
        "Lcom/vk/silentauth/SilentAuthInfo;",
        "vkid_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toVKIDUser(Lcom/vk/silentauth/SilentAuthInfo;)Lcom/vk/id/VKIDUser;
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcom/vk/id/VKIDUser;

    .line 99
    invoke-virtual {p0}, Lcom/vk/silentauth/SilentAuthInfo;->getFirstName()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {p0}, Lcom/vk/silentauth/SilentAuthInfo;->getLastName()Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-virtual {p0}, Lcom/vk/silentauth/SilentAuthInfo;->getPhone()Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-virtual {p0}, Lcom/vk/silentauth/SilentAuthInfo;->getPhoto50()Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-virtual {p0}, Lcom/vk/silentauth/SilentAuthInfo;->getPhoto100()Ljava/lang/String;

    move-result-object v6

    .line 104
    invoke-virtual {p0}, Lcom/vk/silentauth/SilentAuthInfo;->getPhoto200()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x40

    const/4 v10, 0x0

    move-object v1, v0

    .line 98
    invoke-direct/range {v1 .. v10}, Lcom/vk/id/VKIDUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
