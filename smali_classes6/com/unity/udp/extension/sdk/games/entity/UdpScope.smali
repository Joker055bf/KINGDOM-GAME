.class public Lcom/unity/udp/extension/sdk/games/entity/UdpScope;
.super Ljava/lang/Object;
.source "UdpScope.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/unity/udp/extension/sdk/games/entity/UdpScope;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private scopeUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/UdpScope$1;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/UdpScope$1;-><init>()V

    sput-object v0, Lcom/unity/udp/extension/sdk/games/entity/UdpScope;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpScope;->scopeUri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpScope;->scopeUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScopeUri()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpScope;->scopeUri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpScope;->scopeUri:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public setScopeUri(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpScope;->scopeUri:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpScope;->scopeUri:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 39
    iget-object p2, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpScope;->scopeUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
