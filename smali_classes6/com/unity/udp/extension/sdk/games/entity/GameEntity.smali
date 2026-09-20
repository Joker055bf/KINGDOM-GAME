.class public Lcom/unity/udp/extension/sdk/games/entity/GameEntity;
.super Ljava/lang/Object;
.source "GameEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/unity/udp/extension/sdk/games/entity/GameEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private achievementTotalCount:I

.field private applicationId:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private hiResImageUri:Landroid/net/Uri;

.field private iconImageUri:Landroid/net/Uri;

.field private leaderboardCount:I

.field private primaryCategory:Ljava/lang/String;

.field private secondaryCategory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$1;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$1;-><init>()V

    sput-object v0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->achievementTotalCount:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->applicationId:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->description:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->displayName:Ljava/lang/String;

    .line 56
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->hiResImageUri:Landroid/net/Uri;

    .line 57
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->iconImageUri:Landroid/net/Uri;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->leaderboardCount:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->primaryCategory:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->secondaryCategory:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iget v0, p1, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->achievementTotalCount:I

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->achievementTotalCount:I

    .line 20
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->applicationId:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->applicationId:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->description:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->displayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->displayName:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->hiResImageUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->hiResImageUri:Landroid/net/Uri;

    .line 24
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->iconImageUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->iconImageUri:Landroid/net/Uri;

    .line 25
    iget v0, p1, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->leaderboardCount:I

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->leaderboardCount:I

    .line 26
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->primaryCategory:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->primaryCategory:Ljava/lang/String;

    .line 27
    iget-object p1, p1, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->secondaryCategory:Ljava/lang/String;

    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->secondaryCategory:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAchievementTotalCount()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->achievementTotalCount:I

    return v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getHiResImageUri()Landroid/net/Uri;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->hiResImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->iconImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getLeaderboardCount()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->leaderboardCount:I

    return v0
.end method

.method public getPrimaryCategory()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->primaryCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryCategory()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->secondaryCategory:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 37
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->achievementTotalCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->applicationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->hiResImageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->iconImageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 43
    iget p2, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->leaderboardCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object p2, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->primaryCategory:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->secondaryCategory:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
