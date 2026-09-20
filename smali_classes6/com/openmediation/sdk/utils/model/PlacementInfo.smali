.class public Lcom/openmediation/sdk/utils/model/PlacementInfo;
.super Ljava/lang/Object;


# instance fields
.field private mAdType:I

.field private mHeight:I

.field private mId:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/PlacementInfo;->mId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdType()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/PlacementInfo;->mAdType:I

    return v0
.end method

.method public getBannerPlacementInfo(II)Lcom/openmediation/sdk/utils/model/PlacementInfo;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/openmediation/sdk/utils/model/PlacementInfo;->mAdType:I

    iput p1, p0, Lcom/openmediation/sdk/utils/model/PlacementInfo;->mWidth:I

    iput p2, p0, Lcom/openmediation/sdk/utils/model/PlacementInfo;->mHeight:I

    return-object p0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/PlacementInfo;->mHeight:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/PlacementInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementInfo(I)Lcom/openmediation/sdk/utils/model/PlacementInfo;
    .locals 1

    iput p1, p0, Lcom/openmediation/sdk/utils/model/PlacementInfo;->mAdType:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 p1, 0x300

    iput p1, p0, Lcom/openmediation/sdk/utils/model/PlacementInfo;->mWidth:I

    const/16 p1, 0x400

    goto :goto_0

    :cond_1
    const/16 p1, 0x4b0

    iput p1, p0, Lcom/openmediation/sdk/utils/model/PlacementInfo;->mWidth:I

    const/16 p1, 0x273

    goto :goto_0

    :cond_2
    const/16 p1, 0x280

    iput p1, p0, Lcom/openmediation/sdk/utils/model/PlacementInfo;->mWidth:I

    const/16 p1, 0x64

    :goto_0
    iput p1, p0, Lcom/openmediation/sdk/utils/model/PlacementInfo;->mHeight:I

    :goto_1
    return-object p0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/PlacementInfo;->mWidth:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlacementInfo{mId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/utils/model/PlacementInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/openmediation/sdk/utils/model/PlacementInfo;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/openmediation/sdk/utils/model/PlacementInfo;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/openmediation/sdk/utils/model/PlacementInfo;->mAdType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
