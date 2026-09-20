.class public final Lcom/vk/id/internal/auth/web/WhiteListedBrowserHelper;
.super Ljava/lang/Object;
.source "WhiteListedBrowserHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0003\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/web/WhiteListedBrowserHelper;",
        "",
        "<init>",
        "()V",
        "WHITE_LIST",
        "",
        "Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;",
        "selectBestBrowser",
        "Lcom/vk/id/internal/auth/web/BrowserDescriptor;",
        "pm",
        "Lcom/vk/id/internal/context/InternalVKIDPackageManager;",
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

.field public static final INSTANCE:Lcom/vk/id/internal/auth/web/WhiteListedBrowserHelper;

.field private static final WHITE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vk/id/internal/auth/web/WhiteListedBrowserHelper;

    invoke-direct {v0}, Lcom/vk/id/internal/auth/web/WhiteListedBrowserHelper;-><init>()V

    sput-object v0, Lcom/vk/id/internal/auth/web/WhiteListedBrowserHelper;->INSTANCE:Lcom/vk/id/internal/auth/web/WhiteListedBrowserHelper;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

    const/4 v1, 0x0

    .line 11
    sget-object v2, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->CHROME_BROWSER:Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 12
    sget-object v2, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->CHROME_CUSTOM_TAB:Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 13
    sget-object v2, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->FIREFOX_CUSTOM_TAB:Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 14
    sget-object v2, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->FIREFOX_BROWSER:Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 15
    sget-object v2, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->SAMSUNG_BROWSER:Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 16
    sget-object v2, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->SAMSUNG_CUSTOM_TAB:Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

    aput-object v2, v0, v1

    .line 10
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vk/id/internal/auth/web/WhiteListedBrowserHelper;->WHITE_LIST:Ljava/util/List;

    const/16 v0, 0x8

    sput v0, Lcom/vk/id/internal/auth/web/WhiteListedBrowserHelper;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final selectBestBrowser(Lcom/vk/id/internal/context/InternalVKIDPackageManager;)Lcom/vk/id/internal/auth/web/BrowserDescriptor;
    .locals 5

    const-string v0, "pm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 22
    :try_start_0
    sget-object v1, Lcom/vk/id/internal/auth/web/BrowserSelector;->INSTANCE:Lcom/vk/id/internal/auth/web/BrowserSelector;

    invoke-virtual {v1, p1}, Lcom/vk/id/internal/auth/web/BrowserSelector;->getAllBrowsers(Lcom/vk/id/internal/context/InternalVKIDPackageManager;)Ljava/util/List;

    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vk/id/internal/auth/web/BrowserDescriptor;

    .line 24
    sget-object v3, Lcom/vk/id/internal/auth/web/WhiteListedBrowserHelper;->WHITE_LIST:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

    .line 25
    invoke-virtual {v4, v2}, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->matches(Lcom/vk/id/internal/auth/web/BrowserDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v2

    .line 30
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vk/id/internal/auth/web/BrowserDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Exception in select browser"

    .line 32
    check-cast p1, Ljava/lang/Throwable;

    const-string v2, "BrowserSelector"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method
