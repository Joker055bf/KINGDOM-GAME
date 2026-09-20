.class public Lcom/flexionmobile/fdk/RefreshItemDefinitionsSuccessResult;
.super Ljava/lang/Object;


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/Item;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/fdk/RefreshItemDefinitionsSuccessResult;->items:Ljava/util/List;

    return-void
.end method

.method public static of(Ljava/util/List;)Lcom/flexionmobile/fdk/RefreshItemDefinitionsSuccessResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/Item;",
            ">;)",
            "Lcom/flexionmobile/fdk/RefreshItemDefinitionsSuccessResult;"
        }
    .end annotation

    new-instance v0, Lcom/flexionmobile/fdk/RefreshItemDefinitionsSuccessResult;

    invoke-direct {v0, p0}, Lcom/flexionmobile/fdk/RefreshItemDefinitionsSuccessResult;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flexionmobile/fdk/RefreshItemDefinitionsSuccessResult;->items:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RefreshItemDefinitionsSuccessResult{items="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flexionmobile/fdk/RefreshItemDefinitionsSuccessResult;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
