.class final Lcom/unity/udp/extension/sdk/games/entity/UdpScope$1;
.super Ljava/lang/Object;
.source "UdpScope.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/udp/extension/sdk/games/entity/UdpScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/unity/udp/extension/sdk/games/entity/UdpScope;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/unity/udp/extension/sdk/games/entity/UdpScope;
    .locals 1

    .line 49
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/UdpScope;

    invoke-direct {v0, p1}, Lcom/unity/udp/extension/sdk/games/entity/UdpScope;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/unity/udp/extension/sdk/games/entity/UdpScope$1;->createFromParcel(Landroid/os/Parcel;)Lcom/unity/udp/extension/sdk/games/entity/UdpScope;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/unity/udp/extension/sdk/games/entity/UdpScope;
    .locals 0

    .line 54
    new-array p1, p1, [Lcom/unity/udp/extension/sdk/games/entity/UdpScope;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/unity/udp/extension/sdk/games/entity/UdpScope$1;->newArray(I)[Lcom/unity/udp/extension/sdk/games/entity/UdpScope;

    move-result-object p1

    return-object p1
.end method
