.class final Lcom/openmediation/sdk/core/imp/splash/SpAdManager$SplashHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/core/imp/splash/SpAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SplashHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/openmediation/sdk/core/imp/splash/SpAdManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;-><init>(Lcom/openmediation/sdk/core/imp/splash/SpAdManager$1;)V

    sput-object v0, Lcom/openmediation/sdk/core/imp/splash/SpAdManager$SplashHolder;->INSTANCE:Lcom/openmediation/sdk/core/imp/splash/SpAdManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/openmediation/sdk/core/imp/splash/SpAdManager;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/core/imp/splash/SpAdManager$SplashHolder;->INSTANCE:Lcom/openmediation/sdk/core/imp/splash/SpAdManager;

    return-object v0
.end method
