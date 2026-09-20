.class final Lcom/openmediation/sdk/utils/cache/DataCache$DataCacheHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/utils/cache/DataCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataCacheHolder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/openmediation/sdk/utils/cache/DataCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/openmediation/sdk/utils/cache/DataCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/utils/cache/DataCache;-><init>(Lcom/openmediation/sdk/utils/cache/DataCache$1;)V

    sput-object v0, Lcom/openmediation/sdk/utils/cache/DataCache$DataCacheHolder;->INSTANCE:Lcom/openmediation/sdk/utils/cache/DataCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/openmediation/sdk/utils/cache/DataCache;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/utils/cache/DataCache$DataCacheHolder;->INSTANCE:Lcom/openmediation/sdk/utils/cache/DataCache;

    return-object v0
.end method
