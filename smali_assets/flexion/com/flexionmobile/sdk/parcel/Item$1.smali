.class final Lcom/flexionmobile/sdk/parcel/Item$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/flexionmobile/sdk/parcel/Item;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/flexionmobile/sdk/parcel/Item;
    .locals 1

    new-instance v0, Lcom/flexionmobile/sdk/parcel/Item;

    invoke-direct {v0, p1}, Lcom/flexionmobile/sdk/parcel/Item;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexionmobile/sdk/parcel/Item$1;->createFromParcel(Landroid/os/Parcel;)Lcom/flexionmobile/sdk/parcel/Item;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/flexionmobile/sdk/parcel/Item;
    .locals 0

    new-array p1, p1, [Lcom/flexionmobile/sdk/parcel/Item;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexionmobile/sdk/parcel/Item$1;->newArray(I)[Lcom/flexionmobile/sdk/parcel/Item;

    move-result-object p1

    return-object p1
.end method
