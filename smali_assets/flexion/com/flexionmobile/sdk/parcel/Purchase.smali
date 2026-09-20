.class public Lcom/flexionmobile/sdk/parcel/Purchase;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/flexionmobile/sdk/billing/Purchase;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/flexionmobile/sdk/parcel/Purchase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final developerPayload:Ljava/lang/String;

.field private final itemId:Ljava/lang/String;

.field private final itemType:Lcom/flexionmobile/sdk/billing/ItemType;

.field private final json:Ljava/lang/String;

.field private final orderId:Ljava/lang/String;

.field private final purchaseState:Lcom/flexionmobile/sdk/billing/PurchaseState;

.field private final purchaseTime:Ljava/util/Date;

.field private final signature:Ljava/lang/String;

.field private final token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/flexionmobile/sdk/parcel/Purchase$1;

    invoke-direct {v0}, Lcom/flexionmobile/sdk/parcel/Purchase$1;-><init>()V

    sput-object v0, Lcom/flexionmobile/sdk/parcel/Purchase;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 12

    invoke-static {}, Lcom/flexionmobile/sdk/billing/ItemType;->values()[Lcom/flexionmobile/sdk/billing/ItemType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v3, v0, v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Lcom/flexionmobile/sdk/billing/PurchaseState;->values()[Lcom/flexionmobile/sdk/billing/PurchaseState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v7, v0, v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/flexionmobile/sdk/parcel/Purchase;-><init>(Lcom/flexionmobile/sdk/billing/ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/flexionmobile/sdk/billing/PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/flexionmobile/sdk/billing/ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/flexionmobile/sdk/billing/PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->itemType:Lcom/flexionmobile/sdk/billing/ItemType;

    iput-object p2, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->itemId:Ljava/lang/String;

    iput-object p4, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->purchaseTime:Ljava/util/Date;

    iput-object p5, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->purchaseState:Lcom/flexionmobile/sdk/billing/PurchaseState;

    iput-object p6, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->developerPayload:Ljava/lang/String;

    iput-object p7, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->token:Ljava/lang/String;

    iput-object p8, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->json:Ljava/lang/String;

    iput-object p9, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->signature:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/flexionmobile/sdk/parcel/Purchase;

    iget-object v2, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->itemType:Lcom/flexionmobile/sdk/billing/ItemType;

    iget-object v3, p1, Lcom/flexionmobile/sdk/parcel/Purchase;->itemType:Lcom/flexionmobile/sdk/billing/ItemType;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->orderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/flexionmobile/sdk/parcel/Purchase;->orderId:Ljava/lang/String;

    invoke-static {v2, v3}, L$r8$backportedMethods$utility$Objects$2$equals;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->itemId:Ljava/lang/String;

    iget-object v3, p1, Lcom/flexionmobile/sdk/parcel/Purchase;->itemId:Ljava/lang/String;

    invoke-static {v2, v3}, L$r8$backportedMethods$utility$Objects$2$equals;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->purchaseTime:Ljava/util/Date;

    iget-object v3, p1, Lcom/flexionmobile/sdk/parcel/Purchase;->purchaseTime:Ljava/util/Date;

    invoke-static {v2, v3}, L$r8$backportedMethods$utility$Objects$2$equals;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->purchaseState:Lcom/flexionmobile/sdk/billing/PurchaseState;

    iget-object v3, p1, Lcom/flexionmobile/sdk/parcel/Purchase;->purchaseState:Lcom/flexionmobile/sdk/billing/PurchaseState;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->developerPayload:Ljava/lang/String;

    iget-object v3, p1, Lcom/flexionmobile/sdk/parcel/Purchase;->developerPayload:Ljava/lang/String;

    invoke-static {v2, v3}, L$r8$backportedMethods$utility$Objects$2$equals;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/flexionmobile/sdk/parcel/Purchase;->token:Ljava/lang/String;

    invoke-static {v2, v3}, L$r8$backportedMethods$utility$Objects$2$equals;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->json:Ljava/lang/String;

    iget-object v3, p1, Lcom/flexionmobile/sdk/parcel/Purchase;->json:Ljava/lang/String;

    invoke-static {v2, v3}, L$r8$backportedMethods$utility$Objects$2$equals;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->signature:Ljava/lang/String;

    iget-object p1, p1, Lcom/flexionmobile/sdk/parcel/Purchase;->signature:Ljava/lang/String;

    invoke-static {v2, p1}, L$r8$backportedMethods$utility$Objects$2$equals;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->developerPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Lcom/flexionmobile/sdk/billing/ItemType;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->itemType:Lcom/flexionmobile/sdk/billing/ItemType;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->purchaseTime:Ljava/util/Date;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/flexionmobile/sdk/billing/PurchaseState;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->purchaseState:Lcom/flexionmobile/sdk/billing/PurchaseState;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->token:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->itemType:Lcom/flexionmobile/sdk/billing/ItemType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->orderId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->itemId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->purchaseTime:Ljava/util/Date;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->purchaseState:Lcom/flexionmobile/sdk/billing/PurchaseState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->developerPayload:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->token:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->json:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->signature:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->json:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->itemType:Lcom/flexionmobile/sdk/billing/ItemType;

    invoke-virtual {p2}, Lcom/flexionmobile/sdk/billing/ItemType;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->orderId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->itemId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->purchaseTime:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->purchaseState:Lcom/flexionmobile/sdk/billing/PurchaseState;

    invoke-virtual {p2}, Lcom/flexionmobile/sdk/billing/PurchaseState;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->developerPayload:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->json:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/flexionmobile/sdk/parcel/Purchase;->signature:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
