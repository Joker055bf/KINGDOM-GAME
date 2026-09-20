.class final Lcom/flexionmobile/sdk/parcel/StartupData$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/flexionmobile/sdk/parcel/StartupData;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/flexionmobile/sdk/parcel/StartupData;
    .locals 1

    const-class v0, Lcom/flexionmobile/sdk/parcel/StartupData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    new-instance v0, Lcom/flexionmobile/sdk/parcel/StartupData;

    invoke-direct {v0, p1}, Lcom/flexionmobile/sdk/parcel/StartupData;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexionmobile/sdk/parcel/StartupData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/flexionmobile/sdk/parcel/StartupData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/flexionmobile/sdk/parcel/StartupData;
    .locals 0

    new-array p1, p1, [Lcom/flexionmobile/sdk/parcel/StartupData;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexionmobile/sdk/parcel/StartupData$1;->newArray(I)[Lcom/flexionmobile/sdk/parcel/StartupData;

    move-result-object p1

    return-object p1
.end method
