.class public Lcom/flexionmobile/sdk/parcel/Item;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/flexionmobile/sdk/billing/Item;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/flexionmobile/sdk/parcel/Item;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final description:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final price:Ljava/lang/String;

.field private final priceAmountMicros:Ljava/lang/Long;

.field private final priceCurrencyCode:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final type:Lcom/flexionmobile/sdk/billing/ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/flexionmobile/sdk/parcel/Item$1;

    invoke-direct {v0}, Lcom/flexionmobile/sdk/parcel/Item$1;-><init>()V

    sput-object v0, Lcom/flexionmobile/sdk/parcel/Item;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/flexionmobile/sdk/billing/ItemType;->values()[Lcom/flexionmobile/sdk/billing/ItemType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/flexionmobile/sdk/parcel/Item;-><init>(Ljava/lang/String;Lcom/flexionmobile/sdk/billing/ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/flexionmobile/sdk/billing/ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/sdk/parcel/Item;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/flexionmobile/sdk/parcel/Item;->type:Lcom/flexionmobile/sdk/billing/ItemType;

    iput-object p3, p0, Lcom/flexionmobile/sdk/parcel/Item;->price:Ljava/lang/String;

    iput-object p4, p0, Lcom/flexionmobile/sdk/parcel/Item;->title:Ljava/lang/String;

    iput-object p5, p0, Lcom/flexionmobile/sdk/parcel/Item;->description:Ljava/lang/String;

    iput-object p6, p0, Lcom/flexionmobile/sdk/parcel/Item;->priceAmountMicros:Ljava/lang/Long;

    iput-object p7, p0, Lcom/flexionmobile/sdk/parcel/Item;->priceCurrencyCode:Ljava/lang/String;

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
    check-cast p1, Lcom/flexionmobile/sdk/parcel/Item;

    iget-object v2, p0, Lcom/flexionmobile/sdk/parcel/Item;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/flexionmobile/sdk/parcel/Item;->id:Ljava/lang/String;

    invoke-static {v2, v3}, L$r8$backportedMethods$utility$Objects$2$equals;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flexionmobile/sdk/parcel/Item;->type:Lcom/flexionmobile/sdk/billing/ItemType;

    iget-object v3, p1, Lcom/flexionmobile/sdk/parcel/Item;->type:Lcom/flexionmobile/sdk/billing/ItemType;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/flexionmobile/sdk/parcel/Item;->price:Ljava/lang/String;

    iget-object v3, p1, Lcom/flexionmobile/sdk/parcel/Item;->price:Ljava/lang/String;

    invoke-static {v2, v3}, L$r8$backportedMethods$utility$Objects$2$equals;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flexionmobile/sdk/parcel/Item;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/flexionmobile/sdk/parcel/Item;->title:Ljava/lang/String;

    invoke-static {v2, v3}, L$r8$backportedMethods$utility$Objects$2$equals;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flexionmobile/sdk/parcel/Item;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/flexionmobile/sdk/parcel/Item;->description:Ljava/lang/String;

    invoke-static {v2, v3}, L$r8$backportedMethods$utility$Objects$2$equals;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flexionmobile/sdk/parcel/Item;->priceAmountMicros:Ljava/lang/Long;

    iget-object v3, p1, Lcom/flexionmobile/sdk/parcel/Item;->priceAmountMicros:Ljava/lang/Long;

    invoke-static {v2, v3}, L$r8$backportedMethods$utility$Objects$2$equals;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flexionmobile/sdk/parcel/Item;->priceCurrencyCode:Ljava/lang/String;

    iget-object p1, p1, Lcom/flexionmobile/sdk/parcel/Item;->priceCurrencyCode:Ljava/lang/String;

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

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/sdk/parcel/Item;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/sdk/parcel/Item;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/sdk/parcel/Item;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceAmountMicros()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/sdk/parcel/Item;->priceAmountMicros:Ljava/lang/Long;

    return-object v0
.end method

.method public getPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/sdk/parcel/Item;->priceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/sdk/parcel/Item;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/flexionmobile/sdk/billing/ItemType;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/sdk/parcel/Item;->type:Lcom/flexionmobile/sdk/billing/ItemType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/flexionmobile/sdk/parcel/Item;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/flexionmobile/sdk/parcel/Item;->type:Lcom/flexionmobile/sdk/billing/ItemType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/flexionmobile/sdk/parcel/Item;->price:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/flexionmobile/sdk/parcel/Item;->title:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/flexionmobile/sdk/parcel/Item;->description:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/flexionmobile/sdk/parcel/Item;->priceAmountMicros:Ljava/lang/Long;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/flexionmobile/sdk/parcel/Item;->priceCurrencyCode:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/flexionmobile/sdk/parcel/Item;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/flexionmobile/sdk/parcel/Item;->type:Lcom/flexionmobile/sdk/billing/ItemType;

    invoke-virtual {p2}, Lcom/flexionmobile/sdk/billing/ItemType;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/flexionmobile/sdk/parcel/Item;->price:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/flexionmobile/sdk/parcel/Item;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/flexionmobile/sdk/parcel/Item;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/flexionmobile/sdk/parcel/Item;->priceAmountMicros:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/flexionmobile/sdk/parcel/Item;->priceCurrencyCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
