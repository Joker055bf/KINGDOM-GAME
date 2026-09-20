.class public Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;
.super Ljava/lang/Object;
.source "LeaderboardScoreEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private displayRank:Ljava/lang/String;

.field private leaderboardDisplayScore:Ljava/lang/String;

.field private playerRank:J

.field private playerRawScore:J

.field private scoreOwnerPlayer:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

.field private scoreTag:Ljava/lang/String;

.field private scoreTimestamp:J

.field private timeSpan:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$1;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$1;-><init>()V

    sput-object v0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->displayRank:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->leaderboardDisplayScore:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->timeSpan:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->playerRank:J

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->playerRawScore:J

    .line 53
    const-class v0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->scoreOwnerPlayer:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->scoreTag:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->scoreTimestamp:J

    return-void
.end method

.method public constructor <init>(Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->displayRank:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->displayRank:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->leaderboardDisplayScore:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->leaderboardDisplayScore:Ljava/lang/String;

    .line 19
    iget v0, p1, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->timeSpan:I

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->timeSpan:I

    .line 20
    iget-wide v0, p1, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->playerRank:J

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->playerRank:J

    .line 21
    iget-wide v0, p1, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->playerRawScore:J

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->playerRawScore:J

    .line 22
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->scoreOwnerPlayer:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->scoreOwnerPlayer:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    .line 23
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->scoreTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->scoreTag:Ljava/lang/String;

    .line 24
    iget-wide v0, p1, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->scoreTimestamp:J

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->scoreTimestamp:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayRank()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->displayRank:Ljava/lang/String;

    return-object v0
.end method

.method public getLeaderboardDisplayScore()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->leaderboardDisplayScore:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerRank()J
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->playerRank:J

    return-wide v0
.end method

.method public getPlayerRawScore()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->playerRawScore:J

    return-wide v0
.end method

.method public getScoreOwnerPlayer()Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->scoreOwnerPlayer:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    return-object v0
.end method

.method public getScoreTag()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->scoreTag:Ljava/lang/String;

    return-object v0
.end method

.method public getScoreTimestamp()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->scoreTimestamp:J

    return-wide v0
.end method

.method public getTimeSpan()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->timeSpan:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->displayRank:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->leaderboardDisplayScore:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->timeSpan:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->playerRank:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 38
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->playerRawScore:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->scoreOwnerPlayer:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 40
    iget-object p2, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->scoreTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;->scoreTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
