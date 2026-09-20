.class public final Lcom/vk/id/analytics/param/LanguageParamKt;
.super Ljava/lang/Object;
.source "LanguageParam.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\u00a8\u0006\u0004"
    }
    d2 = {
        "vkidInternalLanguageParam",
        "Lcom/vk/id/analytics/VKIDAnalytics$EventParam;",
        "context",
        "Landroid/content/Context;",
        "analytics_release"
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
.method public static final vkidInternalLanguageParam(Landroid/content/Context;)Lcom/vk/id/analytics/VKIDAnalytics$EventParam;
    .locals 7
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xc81

    if-eq v2, v3, :cond_c

    const/16 v3, 0xca9

    if-eq v2, v3, :cond_b

    const/16 v3, 0xcae

    if-eq v2, v3, :cond_9

    const/16 v3, 0xccc

    if-eq v2, v3, :cond_7

    const/16 v3, 0xdfc

    if-eq v2, v3, :cond_5

    const/16 v3, 0xe43

    if-eq v2, v3, :cond_4

    const/16 v0, 0xe7e

    if-eq v2, v0, :cond_2

    const/16 v0, 0xe96

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "uk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "tr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x52

    goto :goto_1

    :cond_4
    const-string v2, "ru"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    :cond_5
    const-string v0, "pl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v0, 0xf

    goto :goto_1

    :cond_7
    const-string v0, "fr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/16 v0, 0x10

    goto :goto_1

    :cond_9
    const-string v0, "es"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x4

    goto :goto_1

    :cond_b
    const-string v0, "en"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_c
    const-string v0, "de"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v0, 0x6

    goto :goto_1

    :cond_e
    :goto_0
    move v0, v1

    .line 29
    :cond_f
    :goto_1
    new-instance p0, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    const-string v2, "language"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
