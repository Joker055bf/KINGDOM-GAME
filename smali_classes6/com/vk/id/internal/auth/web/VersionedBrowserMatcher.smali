.class public final Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;
.super Ljava/lang/Object;
.source "VersionedBrowserMatcher.kt"

# interfaces
.implements Lcom/vk/id/internal/auth/web/BrowserMatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bB)\u0008\u0016\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u000f\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;",
        "Lcom/vk/id/internal/auth/web/BrowserMatcher;",
        "mPackageName",
        "",
        "mSignatureHashes",
        "",
        "mUsingCustomTab",
        "",
        "mVersionRange",
        "Lcom/vk/id/internal/auth/web/VersionRange;",
        "<init>",
        "(Ljava/lang/String;Ljava/util/Set;ZLcom/vk/id/internal/auth/web/VersionRange;)V",
        "packageName",
        "signatureHash",
        "usingCustomTab",
        "versionRange",
        "(Ljava/lang/String;Ljava/lang/String;ZLcom/vk/id/internal/auth/web/VersionRange;)V",
        "matches",
        "descriptor",
        "Lcom/vk/id/internal/auth/web/BrowserDescriptor;",
        "Companion",
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

.field private static final ANY_BROWSER:Lcom/vk/id/internal/auth/web/BrowserMatcher;

.field public static final CHROME_BROWSER:Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

.field public static final CHROME_CUSTOM_TAB:Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

.field public static final Companion:Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher$Companion;

.field public static final FIREFOX_BROWSER:Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

.field public static final FIREFOX_CUSTOM_TAB:Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

.field public static final SAMSUNG_BROWSER:Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

.field public static final SAMSUNG_CUSTOM_TAB:Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mSignatureHashes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsingCustomTab:Z

.field private final mVersionRange:Lcom/vk/id/internal/auth/web/VersionRange;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->Companion:Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->$stable:I

    .line 62
    new-instance v0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

    .line 64
    sget-object v1, Lcom/vk/id/internal/auth/web/Browsers$Chrome;->SIGNATURE_SET:Ljava/util/Set;

    .line 66
    sget-object v2, Lcom/vk/id/internal/auth/web/VersionRange;->Companion:Lcom/vk/id/internal/auth/web/VersionRange$Companion;

    sget-object v3, Lcom/vk/id/internal/auth/web/Browsers$Chrome;->MINIMUM_VERSION_FOR_CUSTOM_TAB:Lcom/vk/id/internal/auth/web/DelimitedVersion;

    invoke-virtual {v2, v3}, Lcom/vk/id/internal/auth/web/VersionRange$Companion;->atLeast(Lcom/vk/id/internal/auth/web/DelimitedVersion;)Lcom/vk/id/internal/auth/web/VersionRange;

    move-result-object v2

    const-string v3, "com.android.chrome"

    const/4 v4, 0x1

    .line 62
    invoke-direct {v0, v3, v1, v4, v2}, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;-><init>(Ljava/lang/String;Ljava/util/Set;ZLcom/vk/id/internal/auth/web/VersionRange;)V

    sput-object v0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->CHROME_CUSTOM_TAB:Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

    .line 73
    new-instance v0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

    .line 75
    sget-object v1, Lcom/vk/id/internal/auth/web/Browsers$Chrome;->SIGNATURE_SET:Ljava/util/Set;

    .line 77
    sget-object v2, Lcom/vk/id/internal/auth/web/VersionRange;->ANY_VERSION:Lcom/vk/id/internal/auth/web/VersionRange;

    const/4 v5, 0x0

    .line 73
    invoke-direct {v0, v3, v1, v5, v2}, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;-><init>(Ljava/lang/String;Ljava/util/Set;ZLcom/vk/id/internal/auth/web/VersionRange;)V

    sput-object v0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->CHROME_BROWSER:Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

    .line 84
    new-instance v0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

    .line 86
    sget-object v1, Lcom/vk/id/internal/auth/web/Browsers$Firefox;->SIGNATURE_SET:Ljava/util/Set;

    .line 88
    sget-object v2, Lcom/vk/id/internal/auth/web/VersionRange;->Companion:Lcom/vk/id/internal/auth/web/VersionRange$Companion;

    sget-object v3, Lcom/vk/id/internal/auth/web/Browsers$Firefox;->MINIMUM_VERSION_FOR_CUSTOM_TAB:Lcom/vk/id/internal/auth/web/DelimitedVersion;

    invoke-virtual {v2, v3}, Lcom/vk/id/internal/auth/web/VersionRange$Companion;->atLeast(Lcom/vk/id/internal/auth/web/DelimitedVersion;)Lcom/vk/id/internal/auth/web/VersionRange;

    move-result-object v2

    const-string v3, "org.mozilla.firefox"

    .line 84
    invoke-direct {v0, v3, v1, v4, v2}, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;-><init>(Ljava/lang/String;Ljava/util/Set;ZLcom/vk/id/internal/auth/web/VersionRange;)V

    sput-object v0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->FIREFOX_CUSTOM_TAB:Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

    .line 95
    new-instance v0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

    .line 97
    sget-object v1, Lcom/vk/id/internal/auth/web/Browsers$Firefox;->SIGNATURE_SET:Ljava/util/Set;

    .line 99
    sget-object v2, Lcom/vk/id/internal/auth/web/VersionRange;->ANY_VERSION:Lcom/vk/id/internal/auth/web/VersionRange;

    .line 95
    invoke-direct {v0, v3, v1, v5, v2}, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;-><init>(Ljava/lang/String;Ljava/util/Set;ZLcom/vk/id/internal/auth/web/VersionRange;)V

    sput-object v0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->FIREFOX_BROWSER:Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

    .line 106
    new-instance v0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

    .line 108
    sget-object v1, Lcom/vk/id/internal/auth/web/Browsers$SBrowser;->SIGNATURE_SET:Ljava/util/Set;

    .line 110
    sget-object v2, Lcom/vk/id/internal/auth/web/VersionRange;->ANY_VERSION:Lcom/vk/id/internal/auth/web/VersionRange;

    const-string v3, "com.sec.android.app.sbrowser"

    .line 106
    invoke-direct {v0, v3, v1, v5, v2}, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;-><init>(Ljava/lang/String;Ljava/util/Set;ZLcom/vk/id/internal/auth/web/VersionRange;)V

    sput-object v0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->SAMSUNG_BROWSER:Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

    .line 116
    new-instance v0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher$Companion$ANY_BROWSER$1;

    invoke-direct {v0}, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher$Companion$ANY_BROWSER$1;-><init>()V

    check-cast v0, Lcom/vk/id/internal/auth/web/BrowserMatcher;

    sput-object v0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->ANY_BROWSER:Lcom/vk/id/internal/auth/web/BrowserMatcher;

    .line 126
    new-instance v0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

    .line 128
    sget-object v1, Lcom/vk/id/internal/auth/web/Browsers$SBrowser;->SIGNATURE_SET:Ljava/util/Set;

    .line 130
    sget-object v2, Lcom/vk/id/internal/auth/web/VersionRange;->Companion:Lcom/vk/id/internal/auth/web/VersionRange$Companion;

    sget-object v5, Lcom/vk/id/internal/auth/web/Browsers$SBrowser;->MINIMUM_VERSION_FOR_CUSTOM_TAB:Lcom/vk/id/internal/auth/web/DelimitedVersion;

    invoke-virtual {v2, v5}, Lcom/vk/id/internal/auth/web/VersionRange$Companion;->atLeast(Lcom/vk/id/internal/auth/web/DelimitedVersion;)Lcom/vk/id/internal/auth/web/VersionRange;

    move-result-object v2

    .line 126
    invoke-direct {v0, v3, v1, v4, v2}, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;-><init>(Ljava/lang/String;Ljava/util/Set;ZLcom/vk/id/internal/auth/web/VersionRange;)V

    sput-object v0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->SAMSUNG_CUSTOM_TAB:Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/vk/id/internal/auth/web/VersionRange;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signatureHash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRange"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-static {p2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;-><init>(Ljava/lang/String;Ljava/util/Set;ZLcom/vk/id/internal/auth/web/VersionRange;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;ZLcom/vk/id/internal/auth/web/VersionRange;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/vk/id/internal/auth/web/VersionRange;",
            ")V"
        }
    .end annotation

    const-string v0, "mPackageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mSignatureHashes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mVersionRange"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->mPackageName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->mSignatureHashes:Ljava/util/Set;

    .line 31
    iput-boolean p3, p0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->mUsingCustomTab:Z

    .line 32
    iput-object p4, p0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->mVersionRange:Lcom/vk/id/internal/auth/web/VersionRange;

    return-void
.end method

.method public static final synthetic access$getANY_BROWSER$cp()Lcom/vk/id/internal/auth/web/BrowserMatcher;
    .locals 1

    .line 22
    sget-object v0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->ANY_BROWSER:Lcom/vk/id/internal/auth/web/BrowserMatcher;

    return-object v0
.end method


# virtual methods
.method public matches(Lcom/vk/id/internal/auth/web/BrowserDescriptor;)Z
    .locals 2

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-boolean v0, p0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->mUsingCustomTab:Z

    invoke-virtual {p1}, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->getUseCustomTab()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->mVersionRange:Lcom/vk/id/internal/auth/web/VersionRange;

    invoke-virtual {p1}, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/id/internal/auth/web/VersionRange;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/vk/id/internal/auth/web/VersionedBrowserMatcher;->mSignatureHashes:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->getSignatureHashes()Ljava/util/Set;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
