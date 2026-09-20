.class public Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;
.super Ljava/lang/Object;
.source "AchievementEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private achievementId:Ljava/lang/String;

.field private currentSteps:I

.field private description:Ljava/lang/String;

.field private gamePlayer:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

.field private lastUpdatedTimestamp:J

.field private localeAllSteps:Ljava/lang/String;

.field private localeReachedSteps:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private revealedImageUrl:Landroid/net/Uri;

.field private state:I

.field private totalSteps:I

.field private type:I

.field private unlockedImageUrl:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 216
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$1;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$1;-><init>()V

    sput-object v0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->achievementId:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->type:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->name:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->description:Ljava/lang/String;

    .line 205
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->unlockedImageUrl:Landroid/net/Uri;

    .line 206
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->revealedImageUrl:Landroid/net/Uri;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->totalSteps:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->currentSteps:I

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->state:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->lastUpdatedTimestamp:J

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->localeReachedSteps:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->localeAllSteps:Ljava/lang/String;

    .line 213
    const-class v0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->gamePlayer:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    return-void
.end method

.method public constructor <init>(Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->achievementId:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->achievementId:Ljava/lang/String;

    .line 27
    iget v0, p1, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->type:I

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->type:I

    .line 28
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->name:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->description:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->unlockedImageUrl:Landroid/net/Uri;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->unlockedImageUrl:Landroid/net/Uri;

    .line 31
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->revealedImageUrl:Landroid/net/Uri;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->revealedImageUrl:Landroid/net/Uri;

    .line 32
    iget v0, p1, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->totalSteps:I

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->totalSteps:I

    .line 33
    iget v0, p1, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->currentSteps:I

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->currentSteps:I

    .line 34
    iget v0, p1, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->state:I

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->state:I

    .line 35
    iget-wide v0, p1, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->lastUpdatedTimestamp:J

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->lastUpdatedTimestamp:J

    .line 36
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->localeReachedSteps:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->localeReachedSteps:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->localeReachedSteps:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->localeAllSteps:Ljava/lang/String;

    .line 38
    iget-object p1, p1, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->gamePlayer:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->gamePlayer:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAchievementId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->achievementId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSteps()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->currentSteps:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGamePlayer()Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->gamePlayer:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    return-object v0
.end method

.method public getLastUpdatedTimestamp()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->lastUpdatedTimestamp:J

    return-wide v0
.end method

.method public getLocaleAllSteps()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->localeAllSteps:Ljava/lang/String;

    return-object v0
.end method

.method public getLocaleReachedSteps()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->localeReachedSteps:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRevealedImageUrl()Landroid/net/Uri;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->revealedImageUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->state:I

    return v0
.end method

.method public getTotalSteps()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->totalSteps:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->type:I

    return v0
.end method

.method public getUnlockedImageUrl()Landroid/net/Uri;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->unlockedImageUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->achievementId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->unlockedImageUrl:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 190
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->revealedImageUrl:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 191
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->totalSteps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->currentSteps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->lastUpdatedTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 195
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->localeReachedSteps:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->localeAllSteps:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;->gamePlayer:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
