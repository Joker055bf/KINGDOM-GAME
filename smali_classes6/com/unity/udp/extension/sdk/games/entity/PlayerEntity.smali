.class public Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;
.super Ljava/lang/Object;
.source "PlayerEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accessToken:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private hiResImageUri:Landroid/net/Uri;

.field private iconImageUri:Landroid/net/Uri;

.field private level:I

.field private openId:Ljava/lang/String;

.field private openIdSign:Ljava/lang/String;

.field private playerId:Ljava/lang/String;

.field private playerSign:Ljava/lang/String;

.field private signTimestamp:Ljava/lang/String;

.field private unionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$1;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$1;-><init>()V

    sput-object v0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->displayName:Ljava/lang/String;

    .line 104
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->hiResImageUri:Landroid/net/Uri;

    .line 105
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->iconImageUri:Landroid/net/Uri;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->playerId:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->signTimestamp:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->playerSign:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->level:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->openId:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->unionId:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->accessToken:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->openIdSign:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->displayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->displayName:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->hiResImageUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->hiResImageUri:Landroid/net/Uri;

    .line 27
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->iconImageUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->iconImageUri:Landroid/net/Uri;

    .line 28
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->playerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->playerId:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->signTimestamp:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->signTimestamp:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->playerSign:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->playerSign:Ljava/lang/String;

    .line 31
    iget v0, p1, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->level:I

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->level:I

    .line 32
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->openId:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->openId:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->unionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->unionId:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->accessToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->accessToken:Ljava/lang/String;

    .line 35
    iget-object p1, p1, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->openIdSign:Ljava/lang/String;

    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->openIdSign:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getHiResImageUri()Landroid/net/Uri;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->hiResImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->iconImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->level:I

    return v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenIdSign()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->openIdSign:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->playerId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerSign()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->playerSign:Ljava/lang/String;

    return-object v0
.end method

.method public getSignTimestamp()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->signTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getUnionId()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->unionId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->hiResImageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 91
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->iconImageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 92
    iget-object p2, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->playerId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->signTimestamp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->playerSign:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget p2, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->level:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object p2, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->openId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->unionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object p2, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->accessToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object p2, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->openIdSign:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
