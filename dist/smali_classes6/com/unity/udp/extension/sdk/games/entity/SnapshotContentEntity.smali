.class public Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;
.super Ljava/lang/Object;
.source "SnapshotContentEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private content:[B

.field private count:I

.field private dstOffset:I

.field private srcOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity$1;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity$1;-><init>()V

    sput-object v0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;->dstOffset:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;->content:[B

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;->srcOffset:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;->count:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;->content:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContent()[B
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;->content:[B

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;->count:I

    return v0
.end method

.method public getDstOffset()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;->dstOffset:I

    return v0
.end method

.method public getSrcOffset()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;->srcOffset:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 40
    iget p2, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;->dstOffset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object p2, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;->content:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 42
    iget p2, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;->srcOffset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget p2, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;->count:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
