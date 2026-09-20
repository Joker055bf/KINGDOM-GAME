.class public final Lcom/vk/id/auth/VKIDAuthParams$Locale$Companion;
.super Ljava/lang/Object;
.source "VKIDAuthParams.kt"


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/auth/VKIDAuthParams$Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0087\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u00a2\u0006\u0002\u0008\u0008J\u0014\u0010\t\u001a\u0004\u0018\u00010\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vk/id/auth/VKIDAuthParams$Locale$Companion;",
        "",
        "<init>",
        "()V",
        "systemLocale",
        "Lcom/vk/id/auth/VKIDAuthParams$Locale;",
        "context",
        "Landroid/content/Context;",
        "systemLocale$vkid_release",
        "fromLocale",
        "locale",
        "Ljava/util/Locale;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/id/auth/VKIDAuthParams$Locale$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromLocale(Ljava/util/Locale;)Lcom/vk/id/auth/VKIDAuthParams$Locale;
    .locals 3
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xc81

    if-eq v1, v2, :cond_f

    const/16 v2, 0xca9

    if-eq v1, v2, :cond_d

    const/16 v2, 0xcae

    if-eq v1, v2, :cond_b

    const/16 v2, 0xccc

    if-eq v1, v2, :cond_9

    const/16 v2, 0xdfc

    if-eq v1, v2, :cond_7

    const/16 v2, 0xe43

    if-eq v1, v2, :cond_5

    const/16 v2, 0xe7e

    if-eq v1, v2, :cond_3

    const/16 v2, 0xe96

    if-eq v1, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v1, "uk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 162
    :cond_2
    sget-object v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;->UKR:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    goto :goto_1

    :cond_3
    const-string v1, "tr"

    .line 160
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    .line 168
    :cond_4
    sget-object v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;->TURKEY:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    goto :goto_1

    :cond_5
    const-string v1, "ru"

    .line 160
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    .line 161
    :cond_6
    sget-object v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;->RUS:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    goto :goto_1

    :cond_7
    const-string v1, "pl"

    .line 160
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    .line 166
    :cond_8
    sget-object v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;->POL:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    goto :goto_1

    :cond_9
    const-string v1, "fr"

    .line 160
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_1

    .line 167
    :cond_a
    sget-object v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;->FRA:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    goto :goto_1

    :cond_b
    const-string v1, "es"

    .line 160
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_1

    .line 164
    :cond_c
    sget-object v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;->SPA:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    goto :goto_1

    :cond_d
    const-string v1, "en"

    .line 160
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_1

    .line 163
    :cond_e
    sget-object v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;->ENG:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    goto :goto_1

    :cond_f
    const-string v1, "de"

    .line 160
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_1

    .line 165
    :cond_10
    sget-object v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;->GERMAN:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    :cond_11
    :goto_1
    return-object v0
.end method

.method public final systemLocale$vkid_release(Landroid/content/Context;)Lcom/vk/id/auth/VKIDAuthParams$Locale;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    .line 155
    invoke-virtual {p0, p1}, Lcom/vk/id/auth/VKIDAuthParams$Locale$Companion;->fromLocale(Ljava/util/Locale;)Lcom/vk/id/auth/VKIDAuthParams$Locale;

    move-result-object p1

    return-object p1
.end method
