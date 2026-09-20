.class public final Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher$Companion;
.super Ljava/lang/Object;
.source "VersionedBrowserMatcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0010\u0010\u000e\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher$Companion;",
        "",
        "<init>",
        "()V",
        "CHROME_CUSTOM_TAB",
        "Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;",
        "CHROME_BROWSER",
        "FIREFOX_CUSTOM_TAB",
        "FIREFOX_BROWSER",
        "SAMSUNG_BROWSER",
        "ANY_BROWSER",
        "Lcom/vk/id/internal/auth/web/BrowserMatcher;",
        "getANY_BROWSER",
        "()Lcom/vk/id/internal/auth/web/BrowserMatcher;",
        "SAMSUNG_CUSTOM_TAB",
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

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getANY_BROWSER()Lcom/vk/id/internal/auth/web/BrowserMatcher;
    .locals 1

    .line 116
    invoke-static {}, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->access$getANY_BROWSER$cp()Lcom/vk/id/internal/auth/web/BrowserMatcher;

    move-result-object v0

    return-object v0
.end method
