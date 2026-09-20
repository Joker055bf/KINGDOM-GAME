.class Lcom/openmediation/sdk/core/AdapterRepository$AdapterRepositoryHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/core/AdapterRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterRepositoryHolder"
.end annotation


# static fields
.field private static mSingleton:Lcom/openmediation/sdk/core/AdapterRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/openmediation/sdk/core/AdapterRepository;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/core/AdapterRepository;-><init>(Lcom/openmediation/sdk/core/AdapterRepository$1;)V

    sput-object v0, Lcom/openmediation/sdk/core/AdapterRepository$AdapterRepositoryHolder;->mSingleton:Lcom/openmediation/sdk/core/AdapterRepository;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/openmediation/sdk/core/AdapterRepository;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/core/AdapterRepository$AdapterRepositoryHolder;->mSingleton:Lcom/openmediation/sdk/core/AdapterRepository;

    return-object v0
.end method
