.class public Lcom/openmediation/sdk/mediation/AdnAdInfo;
.super Lcom/openmediation/sdk/nativead/AdInfo;


# instance fields
.field private mAdnNativeAd:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/nativead/AdInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdnNativeAd()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/mediation/AdnAdInfo;->mAdnNativeAd:Ljava/lang/Object;

    return-object v0
.end method

.method public setAdnNativeAd(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/mediation/AdnAdInfo;->mAdnNativeAd:Ljava/lang/Object;

    return-void
.end method
