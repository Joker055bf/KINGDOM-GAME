.class public final Lcom/vk/id/internal/analytics/CustomAuthAnalyticsKt;
.super Ljava/lang/Object;
.source "CustomAuthAnalytics.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/internal/analytics/CustomAuthAnalyticsKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "toAnalyticsParam",
        "",
        "Lcom/vk/id/OAuth;",
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
.method public static final toAnalyticsParam(Lcom/vk/id/OAuth;)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lcom/vk/id/internal/analytics/CustomAuthAnalyticsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/vk/id/OAuth;->ordinal()I

    move-result p0

    aget p0, v1, p0

    :goto_0
    if-eq p0, v0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const-string p0, "ok_ru"

    goto :goto_1

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    const-string p0, "mail_ru"

    goto :goto_1

    :cond_3
    const-string p0, "vk"

    goto :goto_1

    :cond_4
    const-string p0, ""

    :goto_1
    return-object p0
.end method
