.class Lcom/openmediation/sdk/utils/model/AdNetwork$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/utils/model/AdNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/openmediation/sdk/utils/model/AdNetwork;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/openmediation/sdk/utils/model/AdNetwork;
    .locals 1

    new-instance v0, Lcom/openmediation/sdk/utils/model/AdNetwork;

    invoke-direct {v0, p1}, Lcom/openmediation/sdk/utils/model/AdNetwork;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/model/AdNetwork$1;->createFromParcel(Landroid/os/Parcel;)Lcom/openmediation/sdk/utils/model/AdNetwork;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/openmediation/sdk/utils/model/AdNetwork;
    .locals 0

    new-array p1, p1, [Lcom/openmediation/sdk/utils/model/AdNetwork;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/model/AdNetwork$1;->newArray(I)[Lcom/openmediation/sdk/utils/model/AdNetwork;

    move-result-object p1

    return-object p1
.end method
