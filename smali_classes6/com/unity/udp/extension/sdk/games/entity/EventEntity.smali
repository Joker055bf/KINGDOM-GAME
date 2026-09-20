.class public Lcom/unity/udp/extension/sdk/games/entity/EventEntity;
.super Ljava/lang/Object;
.source "EventEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/unity/udp/extension/sdk/games/entity/EventEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private description:Ljava/lang/String;

.field private eventId:Ljava/lang/String;

.field private isVisible:Z

.field private localeValue:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private playerEntity:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

.field private thumbnailUri:Landroid/net/Uri;

.field private value:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$1;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$1;-><init>()V

    sput-object v0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->eventId:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->name:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->description:Ljava/lang/String;

    .line 54
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->thumbnailUri:Landroid/net/Uri;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->value:J

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->localeValue:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->isVisible:Z

    .line 58
    const-class v0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->playerEntity:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    return-void
.end method

.method public constructor <init>(Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->eventId:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->eventId:Ljava/lang/String;

    .line 24
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->name:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->description:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->thumbnailUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->thumbnailUri:Landroid/net/Uri;

    .line 27
    iget-wide v0, p1, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->value:J

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->value:J

    .line 28
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->localeValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->localeValue:Ljava/lang/String;

    .line 29
    iget-boolean v0, p1, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->isVisible:Z

    iput-boolean v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->isVisible:Z

    .line 30
    iget-object p1, p1, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->playerEntity:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->playerEntity:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocaleValue()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->localeValue:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayer()Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->playerEntity:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    return-object v0
.end method

.method public getThumbnailUri()Landroid/net/Uri;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->thumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->value:J

    return-wide v0
.end method

.method public isVisible()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->isVisible:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->eventId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->thumbnailUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 44
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->value:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->localeValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-boolean v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->isVisible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 47
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;->playerEntity:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
