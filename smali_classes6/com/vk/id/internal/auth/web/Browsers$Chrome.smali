.class public final Lcom/vk/id/internal/auth/web/Browsers$Chrome;
.super Ljava/lang/Object;
.source "Browsers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/internal/auth/web/Browsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Chrome"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0003\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/web/Browsers$Chrome;",
        "",
        "<init>",
        "()V",
        "PACKAGE_NAME",
        "",
        "SIGNATURE",
        "SIGNATURE_SET",
        "",
        "MINIMUM_VERSION_FOR_CUSTOM_TAB",
        "Lcom/vk/id/internal/auth/web/DelimitedVersion;",
        "standaloneBrowser",
        "Lcom/vk/id/internal/auth/web/BrowserDescriptor;",
        "version",
        "customTab",
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

.field public static final INSTANCE:Lcom/vk/id/internal/auth/web/Browsers$Chrome;

.field public static final MINIMUM_VERSION_FOR_CUSTOM_TAB:Lcom/vk/id/internal/auth/web/DelimitedVersion;

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.android.chrome"

.field public static final SIGNATURE:Ljava/lang/String; = "7fmduHKTdHHrlMvldlEqAIlSfii1tl35bxj1OXN5Ve8c4lU6URVu4xtSHc3BVZxS6WWJnxMDhIfQN0N0K2NDJg=="

.field public static final SIGNATURE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/internal/auth/web/Browsers$Chrome;

    invoke-direct {v0}, Lcom/vk/id/internal/auth/web/Browsers$Chrome;-><init>()V

    sput-object v0, Lcom/vk/id/internal/auth/web/Browsers$Chrome;->INSTANCE:Lcom/vk/id/internal/auth/web/Browsers$Chrome;

    const-string v0, "7fmduHKTdHHrlMvldlEqAIlSfii1tl35bxj1OXN5Ve8c4lU6URVu4xtSHc3BVZxS6WWJnxMDhIfQN0N0K2NDJg=="

    .line 44
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/vk/id/internal/auth/web/Browsers$Chrome;->SIGNATURE_SET:Ljava/util/Set;

    .line 50
    sget-object v0, Lcom/vk/id/internal/auth/web/DelimitedVersion;->Companion:Lcom/vk/id/internal/auth/web/DelimitedVersion$Companion;

    const-string v1, "45"

    invoke-virtual {v0, v1}, Lcom/vk/id/internal/auth/web/DelimitedVersion$Companion;->parse(Ljava/lang/String;)Lcom/vk/id/internal/auth/web/DelimitedVersion;

    move-result-object v0

    sput-object v0, Lcom/vk/id/internal/auth/web/Browsers$Chrome;->MINIMUM_VERSION_FOR_CUSTOM_TAB:Lcom/vk/id/internal/auth/web/DelimitedVersion;

    const/16 v0, 0x8

    sput v0, Lcom/vk/id/internal/auth/web/Browsers$Chrome;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final customTab(Ljava/lang/String;)Lcom/vk/id/internal/auth/web/BrowserDescriptor;
    .locals 4

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;

    sget-object v1, Lcom/vk/id/internal/auth/web/Browsers$Chrome;->SIGNATURE_SET:Ljava/util/Set;

    const/4 v2, 0x1

    const-string v3, "com.android.chrome"

    invoke-direct {v0, v3, v1, p1, v2}, Lcom/vk/id/internal/auth/web/BrowserDescriptor;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final standaloneBrowser(Ljava/lang/String;)Lcom/vk/id/internal/auth/web/BrowserDescriptor;
    .locals 4

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;

    sget-object v1, Lcom/vk/id/internal/auth/web/Browsers$Chrome;->SIGNATURE_SET:Ljava/util/Set;

    const/4 v2, 0x0

    const-string v3, "com.android.chrome"

    invoke-direct {v0, v3, v1, p1, v2}, Lcom/vk/id/internal/auth/web/BrowserDescriptor;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Z)V

    return-object v0
.end method
