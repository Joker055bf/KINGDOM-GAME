.class Lcom/openmediation/sdk/mobileads/HeliumSingleTon$CbtHolder;
.super Ljava/lang/Object;
.source "HeliumSingleTon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/mobileads/HeliumSingleTon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CbtHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon;-><init>(Lcom/openmediation/sdk/mobileads/HeliumSingleTon$1;)V

    sput-object v0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$CbtHolder;->INSTANCE:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/openmediation/sdk/mobileads/HeliumSingleTon;
    .locals 1

    .line 58
    sget-object v0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$CbtHolder;->INSTANCE:Lcom/openmediation/sdk/mobileads/HeliumSingleTon;

    return-object v0
.end method
