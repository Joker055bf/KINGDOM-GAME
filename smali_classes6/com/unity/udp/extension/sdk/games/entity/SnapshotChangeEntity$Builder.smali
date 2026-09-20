.class public Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;
.super Ljava/lang/Object;
.source "SnapshotChangeEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field coverImage:Landroid/graphics/Bitmap;

.field currentProgress:J

.field description:Ljava/lang/String;

.field imageMimeType:Ljava/lang/String;

.field playedTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;
    .locals 1

    .line 137
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;

    invoke-direct {v0, p0}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;-><init>(Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;)V

    return-object v0
.end method

.method public convertImgBase64ToBitmap(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 118
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;->setBitmap([B)Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;

    :cond_0
    return-object p0
.end method

.method public convertImgFilePathToBitmap(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;->coverImage:Landroid/graphics/Bitmap;

    :cond_0
    return-object p0
.end method

.method public setBitmap([B)Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 108
    array-length v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 109
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;->coverImage:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const-string p1, "data is empty, cannot covert to bitmap."

    .line 111
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logWarn(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setCoverImage(Landroid/graphics/Bitmap;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;->coverImage:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setCurrentProgress(J)Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;
    .locals 0

    .line 98
    iput-wide p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;->currentProgress:J

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public setImageMimeType(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;->imageMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setPlayedTimeMillis(J)Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;
    .locals 0

    .line 93
    iput-wide p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;->playedTimeMillis:J

    return-object p0
.end method
