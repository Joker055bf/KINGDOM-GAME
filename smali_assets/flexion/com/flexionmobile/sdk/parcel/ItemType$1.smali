.class final Lcom/flexionmobile/sdk/parcel/ItemType$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/flexionmobile/sdk/parcel/ItemType;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/flexionmobile/sdk/parcel/ItemType;
    .locals 2

    new-instance v0, Lcom/flexionmobile/sdk/parcel/ItemType;

    invoke-static {}, Lcom/flexionmobile/sdk/billing/ItemType;->values()[Lcom/flexionmobile/sdk/billing/ItemType;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, v1, p1

    invoke-direct {v0, p1}, Lcom/flexionmobile/sdk/parcel/ItemType;-><init>(Lcom/flexionmobile/sdk/billing/ItemType;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexionmobile/sdk/parcel/ItemType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/flexionmobile/sdk/parcel/ItemType;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/flexionmobile/sdk/parcel/ItemType;
    .locals 0

    new-array p1, p1, [Lcom/flexionmobile/sdk/parcel/ItemType;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexionmobile/sdk/parcel/ItemType$1;->newArray(I)[Lcom/flexionmobile/sdk/parcel/ItemType;

    move-result-object p1

    return-object p1
.end method
