.class public Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;
.super Ljava/lang/Object;
.source "PlayerStatisticsEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private averageSessionLength:F

.field private daysSinceLastPlayed:I

.field private numberOfPurchases:I

.field private numberOfSessions:I

.field private totalPurchasesAmountRange:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$1;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$1;-><init>()V

    sput-object v0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;->averageSessionLength:F

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;->daysSinceLastPlayed:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;->numberOfSessions:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;->numberOfPurchases:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;->totalPurchasesAmountRange:I

    return-void
.end method

.method public constructor <init>(Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iget v0, p1, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;->averageSessionLength:F

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;->averageSessionLength:F

    .line 15
    iget v0, p1, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;->daysSinceLastPlayed:I

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;->daysSinceLastPlayed:I

    .line 16
    iget v0, p1, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;->numberOfSessions:I

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;->numberOfSessions:I

    .line 17
    iget v0, p1, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;->numberOfPurchases:I

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;->numberOfPurchases:I

    .line 18
    iget p1, p1, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;->totalPurchasesAmountRange:I

    iput p1, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;->totalPurchasesAmountRange:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAverageSessionLength()F
    .locals 1

    .line 59
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;->averageSessionLength:F

    return v0
.end method

.method public getDaysSinceLastPlayed()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;->daysSinceLastPlayed:I

    return v0
.end method

.method public getNumberOfPurchases()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;->numberOfPurchases:I

    return v0
.end method

.method public getNumberOfSessions()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;->numberOfSessions:I

    return v0
.end method

.method public getTotalPurchasesAmountRange()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;->totalPurchasesAmountRange:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 28
    iget p2, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;->averageSessionLength:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 29
    iget p2, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;->daysSinceLastPlayed:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget p2, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;->numberOfSessions:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget p2, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;->numberOfPurchases:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget p2, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;->totalPurchasesAmountRange:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
