.class public Lcom/flexionmobile/fdk/FdkItem;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flexionmobile/fdk/Item;


# instance fields
.field private final description:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final itemType:Lcom/flexionmobile/fdk/ItemType;

.field private final price:Ljava/lang/String;

.field private final priceAmountMicros:Ljava/lang/Long;

.field private final priceCurrencyCode:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/flexionmobile/fdk/ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/fdk/FdkItem;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/flexionmobile/fdk/FdkItem;->itemType:Lcom/flexionmobile/fdk/ItemType;

    iput-object p3, p0, Lcom/flexionmobile/fdk/FdkItem;->price:Ljava/lang/String;

    iput-object p4, p0, Lcom/flexionmobile/fdk/FdkItem;->title:Ljava/lang/String;

    iput-object p5, p0, Lcom/flexionmobile/fdk/FdkItem;->description:Ljava/lang/String;

    iput-object p6, p0, Lcom/flexionmobile/fdk/FdkItem;->priceAmountMicros:Ljava/lang/Long;

    iput-object p7, p0, Lcom/flexionmobile/fdk/FdkItem;->priceCurrencyCode:Ljava/lang/String;

    return-void
.end method

.method public static of(Ljava/lang/String;Lcom/flexionmobile/fdk/ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Lcom/flexionmobile/fdk/FdkItem;
    .locals 9

    new-instance v8, Lcom/flexionmobile/fdk/FdkItem;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/flexionmobile/fdk/FdkItem;-><init>(Ljava/lang/String;Lcom/flexionmobile/fdk/ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v8
.end method


# virtual methods
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
    check-cast p1, Lcom/flexionmobile/fdk/FdkItem;

    iget-object v2, p0, Lcom/flexionmobile/fdk/FdkItem;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/flexionmobile/fdk/FdkItem;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flexionmobile/fdk/FdkItem;->itemType:Lcom/flexionmobile/fdk/ItemType;

    iget-object p1, p1, Lcom/flexionmobile/fdk/FdkItem;->itemType:Lcom/flexionmobile/fdk/ItemType;

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/FdkItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/FdkItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/FdkItem;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceAmountMicros()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/FdkItem;->priceAmountMicros:Ljava/lang/Long;

    return-object v0
.end method

.method public getPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/FdkItem;->priceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/FdkItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/flexionmobile/fdk/ItemType;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/FdkItem;->itemType:Lcom/flexionmobile/fdk/ItemType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/flexionmobile/fdk/FdkItem;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/flexionmobile/fdk/FdkItem;->itemType:Lcom/flexionmobile/fdk/ItemType;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FdkItem{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flexionmobile/fdk/FdkItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', itemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flexionmobile/fdk/FdkItem;->itemType:Lcom/flexionmobile/fdk/ItemType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", price=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flexionmobile/fdk/FdkItem;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flexionmobile/fdk/FdkItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flexionmobile/fdk/FdkItem;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', priceAmountMicros="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flexionmobile/fdk/FdkItem;->priceAmountMicros:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priceCurrencyCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flexionmobile/fdk/FdkItem;->priceCurrencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
