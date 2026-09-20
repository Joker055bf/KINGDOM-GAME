.class public Lcom/openmediation/sdk/InitConfiguration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/InitConfiguration$Builder;
    }
.end annotation


# instance fields
.field private isLogEnable:Z

.field private mAdTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/OmAds$AD_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field private mAppKey:Ljava/lang/String;

.field private mCacheAdTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/OmAds$CACHE_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field private mChannel:Ljava/lang/String;

.field private mInitHost:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/openmediation/sdk/InitConfiguration$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/openmediation/sdk/InitConfiguration$Builder;->access$000(Lcom/openmediation/sdk/InitConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/InitConfiguration;->mAppKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/openmediation/sdk/InitConfiguration$Builder;->access$100(Lcom/openmediation/sdk/InitConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/InitConfiguration;->mInitHost:Ljava/lang/String;

    invoke-static {p1}, Lcom/openmediation/sdk/InitConfiguration$Builder;->access$200(Lcom/openmediation/sdk/InitConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/InitConfiguration;->mChannel:Ljava/lang/String;

    invoke-static {p1}, Lcom/openmediation/sdk/InitConfiguration$Builder;->access$300(Lcom/openmediation/sdk/InitConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/openmediation/sdk/InitConfiguration;->isLogEnable:Z

    invoke-static {p1}, Lcom/openmediation/sdk/InitConfiguration$Builder;->access$400(Lcom/openmediation/sdk/InitConfiguration$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/InitConfiguration;->mAdTypes:Ljava/util/List;

    invoke-static {p1}, Lcom/openmediation/sdk/InitConfiguration$Builder;->access$500(Lcom/openmediation/sdk/InitConfiguration$Builder;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/openmediation/sdk/InitConfiguration;->mCacheAdTypes:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/InitConfiguration$Builder;Lcom/openmediation/sdk/InitConfiguration$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/InitConfiguration;-><init>(Lcom/openmediation/sdk/InitConfiguration$Builder;)V

    return-void
.end method


# virtual methods
.method public getAdTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/OmAds$AD_TYPE;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/InitConfiguration;->mAdTypes:Ljava/util/List;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/InitConfiguration;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheAdTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/OmAds$CACHE_TYPE;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/InitConfiguration;->mCacheAdTypes:Ljava/util/List;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/InitConfiguration;->mChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getInitHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/InitConfiguration;->mInitHost:Ljava/lang/String;

    return-object v0
.end method

.method public isLogEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/InitConfiguration;->isLogEnable:Z

    return v0
.end method
