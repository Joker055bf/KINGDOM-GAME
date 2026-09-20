.class Lcom/openmediation/sdk/unity/SplashSingleTon$SplashHolder;
.super Ljava/lang/Object;
.source "SplashSingleTon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/unity/SplashSingleTon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SplashHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/openmediation/sdk/unity/SplashSingleTon;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/openmediation/sdk/unity/SplashSingleTon;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/unity/SplashSingleTon;-><init>(Lcom/openmediation/sdk/unity/SplashSingleTon$1;)V

    sput-object v0, Lcom/openmediation/sdk/unity/SplashSingleTon$SplashHolder;->INSTANCE:Lcom/openmediation/sdk/unity/SplashSingleTon;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/openmediation/sdk/unity/SplashSingleTon;
    .locals 1

    .line 27
    sget-object v0, Lcom/openmediation/sdk/unity/SplashSingleTon$SplashHolder;->INSTANCE:Lcom/openmediation/sdk/unity/SplashSingleTon;

    return-object v0
.end method
