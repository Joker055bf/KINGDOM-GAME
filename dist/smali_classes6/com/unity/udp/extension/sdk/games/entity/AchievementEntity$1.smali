.class final Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$1;
.super Ljava/lang/Object;
.source "AchievementEntity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;
    .locals 1

    .line 219
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;

    invoke-direct {v0, p1}, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;
    .locals 0

    .line 224
    new-array p1, p1, [Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$1;->newArray(I)[Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;

    move-result-object p1

    return-object p1
.end method
