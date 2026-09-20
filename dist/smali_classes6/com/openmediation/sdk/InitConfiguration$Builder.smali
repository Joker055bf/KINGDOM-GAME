.class public Lcom/openmediation/sdk/InitConfiguration$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/InitConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appKey:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private initHost:Ljava/lang/String;

.field private logEnable:Z

.field private mPreloadAdTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/OmAds$AD_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field private mUseCacheAdTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/OmAds$CACHE_TYPE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/openmediation/sdk/InitConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/InitConfiguration$Builder;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/openmediation/sdk/InitConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/InitConfiguration$Builder;->initHost:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/openmediation/sdk/InitConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/InitConfiguration$Builder;->channel:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/openmediation/sdk/InitConfiguration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/openmediation/sdk/InitConfiguration$Builder;->logEnable:Z

    return p0
.end method

.method static synthetic access$400(Lcom/openmediation/sdk/InitConfiguration$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/InitConfiguration$Builder;->mPreloadAdTypes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/openmediation/sdk/InitConfiguration$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/InitConfiguration$Builder;->mUseCacheAdTypes:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public appKey(Ljava/lang/String;)Lcom/openmediation/sdk/InitConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/InitConfiguration$Builder;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/openmediation/sdk/InitConfiguration;
    .locals 2

    new-instance v0, Lcom/openmediation/sdk/InitConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/openmediation/sdk/InitConfiguration;-><init>(Lcom/openmediation/sdk/InitConfiguration$Builder;Lcom/openmediation/sdk/InitConfiguration$1;)V

    return-object v0
.end method

.method public channel(Ljava/lang/String;)Lcom/openmediation/sdk/InitConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/InitConfiguration$Builder;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public initHost(Ljava/lang/String;)Lcom/openmediation/sdk/InitConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/InitConfiguration$Builder;->initHost:Ljava/lang/String;

    return-object p0
.end method

.method public logEnable(Z)Lcom/openmediation/sdk/InitConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/openmediation/sdk/InitConfiguration$Builder;->logEnable:Z

    return-object p0
.end method

.method public varargs preloadAdTypes([Lcom/openmediation/sdk/OmAds$AD_TYPE;)Lcom/openmediation/sdk/InitConfiguration$Builder;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/InitConfiguration$Builder;->mPreloadAdTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs useCacheAdTypes([Lcom/openmediation/sdk/OmAds$CACHE_TYPE;)Lcom/openmediation/sdk/InitConfiguration$Builder;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/InitConfiguration$Builder;->mUseCacheAdTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
