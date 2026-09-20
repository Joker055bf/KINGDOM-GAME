.class final Lcom/openmediation/sdk/bid/BidS2SManager$BidHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/bid/BidS2SManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BidHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/openmediation/sdk/bid/BidS2SManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/openmediation/sdk/bid/BidS2SManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/bid/BidS2SManager;-><init>(Lcom/openmediation/sdk/bid/BidS2SManager$1;)V

    sput-object v0, Lcom/openmediation/sdk/bid/BidS2SManager$BidHolder;->INSTANCE:Lcom/openmediation/sdk/bid/BidS2SManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/openmediation/sdk/bid/BidS2SManager;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/bid/BidS2SManager$BidHolder;->INSTANCE:Lcom/openmediation/sdk/bid/BidS2SManager;

    return-object v0
.end method
