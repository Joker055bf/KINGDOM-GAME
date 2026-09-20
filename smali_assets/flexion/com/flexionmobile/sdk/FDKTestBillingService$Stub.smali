.class public abstract Lcom/flexionmobile/sdk/FDKTestBillingService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/flexionmobile/sdk/FDKTestBillingService;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.flexionmobile.sdk.FDKTestBillingService"

.field static final TRANSACTION_consumePurchase:I = 0x4

.field static final TRANSACTION_getBuyIntent:I = 0x5

.field static final TRANSACTION_getItemDetails:I = 0x3

.field static final TRANSACTION_getPurchases:I = 0x2

.field static final TRANSACTION_initStartupFlow:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.flexionmobile.sdk.FDKTestBillingService"

    invoke-virtual {p0, p0, v0}, Lcom/flexionmobile/sdk/FDKTestBillingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/flexionmobile/sdk/FDKTestBillingService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.flexionmobile.sdk.FDKTestBillingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/flexionmobile/sdk/FDKTestBillingService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/flexionmobile/sdk/FDKTestBillingService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/flexionmobile/sdk/FDKTestBillingService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/flexionmobile/sdk/FDKTestBillingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/flexionmobile/sdk/FDKTestBillingService;
    .locals 1

    sget-object v0, Lcom/flexionmobile/sdk/FDKTestBillingService$Stub$Proxy;->sDefaultImpl:Lcom/flexionmobile/sdk/FDKTestBillingService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/flexionmobile/sdk/FDKTestBillingService;)Z
    .locals 1

    sget-object v0, Lcom/flexionmobile/sdk/FDKTestBillingService$Stub$Proxy;->sDefaultImpl:Lcom/flexionmobile/sdk/FDKTestBillingService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/flexionmobile/sdk/FDKTestBillingService$Stub$Proxy;->sDefaultImpl:Lcom/flexionmobile/sdk/FDKTestBillingService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.flexionmobile.sdk.FDKTestBillingService"

    if-eq p1, v1, :cond_b

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq p1, v3, :cond_8

    const/4 v3, 0x3

    if-eq p1, v3, :cond_5

    const/4 v3, 0x4

    if-eq p1, v3, :cond_4

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    sget-object p4, Lcom/flexionmobile/sdk/parcel/ItemType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v4, p4

    check-cast v4, Lcom/flexionmobile/sdk/parcel/ItemType;

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v4, p4, p2}, Lcom/flexionmobile/sdk/FDKTestBillingService$Stub;->getBuyIntent(Ljava/lang/String;Lcom/flexionmobile/sdk/parcel/ItemType;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/flexionmobile/sdk/FDKTestBillingService$Stub;->consumePurchase(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/flexionmobile/sdk/parcel/ItemType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/flexionmobile/sdk/parcel/ItemType;

    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v4, p1, p2}, Lcom/flexionmobile/sdk/FDKTestBillingService$Stub;->getItemDetails(Lcom/flexionmobile/sdk/parcel/ItemType;Ljava/util/List;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_7

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    :cond_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/flexionmobile/sdk/parcel/ItemType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/flexionmobile/sdk/parcel/ItemType;

    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/flexionmobile/sdk/FDKTestBillingService$Stub;->getPurchases(Lcom/flexionmobile/sdk/parcel/ItemType;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_a

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    :cond_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flexionmobile/sdk/FDKTestBillingService$Stub;->initStartupFlow(Ljava/lang/String;)Lcom/flexionmobile/sdk/parcel/StartupData;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_c

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p3, v1}, Lcom/flexionmobile/sdk/parcel/StartupData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v1
.end method
