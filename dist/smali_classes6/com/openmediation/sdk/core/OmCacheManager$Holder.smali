.class final Lcom/openmediation/sdk/core/OmCacheManager$Holder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/core/OmCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/openmediation/sdk/core/OmCacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/openmediation/sdk/core/OmCacheManager;

    invoke-direct {v0}, Lcom/openmediation/sdk/core/OmCacheManager;-><init>()V

    sput-object v0, Lcom/openmediation/sdk/core/OmCacheManager$Holder;->INSTANCE:Lcom/openmediation/sdk/core/OmCacheManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/openmediation/sdk/core/OmCacheManager;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/core/OmCacheManager$Holder;->INSTANCE:Lcom/openmediation/sdk/core/OmCacheManager;

    return-object v0
.end method
