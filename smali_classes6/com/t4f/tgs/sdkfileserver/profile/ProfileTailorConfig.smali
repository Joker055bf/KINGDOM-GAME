.class public Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;
.super Ljava/lang/Object;
.source "ProfileTailorConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private quality:I

.field private size:J

.field private type:Ljava/lang/String;

.field private with:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    .line 10
    iput v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;->quality:I

    .line 12
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method


# virtual methods
.method public getCompressFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public getQuality()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;->quality:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;->size:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getWith()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;->with:I

    return v0
.end method

.method public setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public setQuality(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;->quality:I

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 31
    iput-wide p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;->size:J

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;->type:Ljava/lang/String;

    return-void
.end method

.method public setWith(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;->with:I

    return-void
.end method
