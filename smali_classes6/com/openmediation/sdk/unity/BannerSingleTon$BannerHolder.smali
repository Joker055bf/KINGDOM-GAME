.class final Lcom/openmediation/sdk/unity/BannerSingleTon$BannerHolder;
.super Ljava/lang/Object;
.source "BannerSingleTon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/unity/BannerSingleTon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BannerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/openmediation/sdk/unity/BannerSingleTon;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/openmediation/sdk/unity/BannerSingleTon;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/unity/BannerSingleTon;-><init>(Lcom/openmediation/sdk/unity/BannerSingleTon$1;)V

    sput-object v0, Lcom/openmediation/sdk/unity/BannerSingleTon$BannerHolder;->INSTANCE:Lcom/openmediation/sdk/unity/BannerSingleTon;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/openmediation/sdk/unity/BannerSingleTon;
    .locals 1

    .line 37
    sget-object v0, Lcom/openmediation/sdk/unity/BannerSingleTon$BannerHolder;->INSTANCE:Lcom/openmediation/sdk/unity/BannerSingleTon;

    return-object v0
.end method
