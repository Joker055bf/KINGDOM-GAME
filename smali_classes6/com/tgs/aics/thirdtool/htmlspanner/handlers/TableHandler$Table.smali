.class Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;
.super Ljava/lang/Object;
.source "TableHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Table"
.end annotation


# instance fields
.field private content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/text/Spanned;",
            ">;>;"
        }
    .end annotation
.end field

.field private drawBorder:Z

.field final synthetic this$0:Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;


# direct methods
.method private constructor <init>(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;Z)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;->this$0:Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;->content:Ljava/util/List;

    .line 311
    iput-boolean p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;->drawBorder:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;ZLcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$1;)V
    .locals 0

    .line 305
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;Z)V

    return-void
.end method


# virtual methods
.method public addCell(Landroid/text/Spanned;)V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;->content:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;->getBottomRow()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 332
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No rows added yet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addRow()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;->content:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBottomRow()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/text/Spanned;",
            ">;"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;->content:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/text/Spanned;",
            ">;>;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;->content:Ljava/util/List;

    return-object v0
.end method

.method public isDrawBorder()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;->drawBorder:Z

    return v0
.end method
