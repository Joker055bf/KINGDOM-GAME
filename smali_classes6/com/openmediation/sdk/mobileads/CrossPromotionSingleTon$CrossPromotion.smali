.class Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon$CrossPromotion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CrossPromotion"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;-><init>(Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon$1;)V

    sput-object v0, Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon$CrossPromotion;->INSTANCE:Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon$CrossPromotion;->INSTANCE:Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;

    return-object v0
.end method
