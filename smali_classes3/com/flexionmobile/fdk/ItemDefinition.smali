.class public Lcom/flexionmobile/fdk/ItemDefinition;
.super Ljava/lang/Object;


# instance fields
.field private final itemId:Ljava/lang/String;

.field private final itemType:Lcom/flexionmobile/fdk/ItemType;


# direct methods
.method private constructor <init>(Lcom/flexionmobile/fdk/ItemType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/fdk/ItemDefinition;->itemType:Lcom/flexionmobile/fdk/ItemType;

    iput-object p2, p0, Lcom/flexionmobile/fdk/ItemDefinition;->itemId:Ljava/lang/String;

    return-void
.end method

.method public static of(Lcom/flexionmobile/fdk/ItemType;Ljava/lang/String;)Lcom/flexionmobile/fdk/ItemDefinition;
    .locals 1

    new-instance v0, Lcom/flexionmobile/fdk/ItemDefinition;

    invoke-direct {v0, p0, p1}, Lcom/flexionmobile/fdk/ItemDefinition;-><init>(Lcom/flexionmobile/fdk/ItemType;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getItemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/ItemDefinition;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Lcom/flexionmobile/fdk/ItemType;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/ItemDefinition;->itemType:Lcom/flexionmobile/fdk/ItemType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ItemDefinition { item id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flexionmobile/fdk/ItemDefinition;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", item type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flexionmobile/fdk/ItemDefinition;->itemType:Lcom/flexionmobile/fdk/ItemType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
