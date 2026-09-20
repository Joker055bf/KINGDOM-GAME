.class Lcom/openmediation/sdk/utils/AdLog$AdLogHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/utils/AdLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdLogHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/openmediation/sdk/utils/AdLog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/openmediation/sdk/utils/AdLog;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/utils/AdLog;-><init>(Lcom/openmediation/sdk/utils/AdLog$1;)V

    sput-object v0, Lcom/openmediation/sdk/utils/AdLog$AdLogHolder;->INSTANCE:Lcom/openmediation/sdk/utils/AdLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/openmediation/sdk/utils/AdLog;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/utils/AdLog$AdLogHolder;->INSTANCE:Lcom/openmediation/sdk/utils/AdLog;

    return-object v0
.end method
