.class Lcom/openmediation/sdk/mobileads/AdMobSplashManager$Holder;
.super Ljava/lang/Object;
.source "AdMobSplashManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/mobileads/AdMobSplashManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/openmediation/sdk/mobileads/AdMobSplashManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;-><init>(Lcom/openmediation/sdk/mobileads/AdMobSplashManager$1;)V

    sput-object v0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$Holder;->INSTANCE:Lcom/openmediation/sdk/mobileads/AdMobSplashManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/openmediation/sdk/mobileads/AdMobSplashManager;
    .locals 1

    .line 38
    sget-object v0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$Holder;->INSTANCE:Lcom/openmediation/sdk/mobileads/AdMobSplashManager;

    return-object v0
.end method
