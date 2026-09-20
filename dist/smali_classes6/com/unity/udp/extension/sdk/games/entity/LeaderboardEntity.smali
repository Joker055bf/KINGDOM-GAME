.class public Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;
.super Ljava/lang/Object;
.source "LeaderboardEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private leaderboardDisplayName:Ljava/lang/String;

.field private leaderboardId:Ljava/lang/String;

.field private leaderboardImageUri:Landroid/net/Uri;

.field private leaderboardScoreOrder:I

.field private leaderboardVariants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboardVariant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$1;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$1;-><init>()V

    sput-object v0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;->leaderboardId:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;->leaderboardDisplayName:Ljava/lang/String;

    .line 46
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;->leaderboardImageUri:Landroid/net/Uri;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;->leaderboardScoreOrder:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;->leaderboardVariants:Ljava/util/ArrayList;

    .line 49
    const-class v1, Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboardVariant;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;->leaderboardId:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;->leaderboardId:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;->leaderboardDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;->leaderboardDisplayName:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;->leaderboardImageUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;->leaderboardImageUri:Landroid/net/Uri;

    .line 22
    iget v0, p1, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;->leaderboardScoreOrder:I

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;->leaderboardScoreOrder:I

    .line 23
    iget-object p1, p1, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;->leaderboardVariants:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;->leaderboardVariants:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLeaderboardDisplayName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;->leaderboardDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getLeaderboardId()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;->leaderboardId:Ljava/lang/String;

    return-object v0
.end method

.method public getLeaderboardImageUri()Landroid/net/Uri;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;->leaderboardImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getLeaderboardScoreOrder()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;->leaderboardScoreOrder:I

    return v0
.end method

.method public getLeaderboardVariants()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboardVariant;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;->leaderboardVariants:Ljava/util/ArrayList;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;->leaderboardId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;->leaderboardDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;->leaderboardImageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 36
    iget p2, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;->leaderboardScoreOrder:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object p2, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;->leaderboardVariants:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
