.class Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$TableRowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TableHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TableRowDrawable"
.end annotation


# instance fields
.field private paintBorder:Z

.field private rowHeight:I

.field private tableRow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/Spanned;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;


# direct methods
.method public constructor <init>(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/text/Spanned;",
            ">;Z)V"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$TableRowDrawable;->this$0:Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 236
    iput-object p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$TableRowDrawable;->tableRow:Ljava/util/List;

    .line 237
    invoke-static {p1, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->access$100(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$TableRowDrawable;->rowHeight:I

    .line 238
    iput-boolean p3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$TableRowDrawable;->paintBorder:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 243
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 244
    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$TableRowDrawable;->this$0:Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;

    invoke-static {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->access$200(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 247
    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$TableRowDrawable;->tableRow:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$TableRowDrawable;->this$0:Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;

    invoke-static {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->access$300(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;)I

    move-result v1

    div-int v10, v1, v9

    const/4 v1, 0x0

    move v11, v1

    :goto_0
    if-ge v11, v9, :cond_2

    mul-int v12, v11, v10

    .line 261
    iget-boolean v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$TableRowDrawable;->paintBorder:Z

    if-eqz v1, :cond_1

    int-to-float v2, v12

    const/4 v3, 0x0

    add-int v1, v12, v10

    int-to-float v4, v1

    .line 264
    iget v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$TableRowDrawable;->rowHeight:I

    int-to-float v5, v1

    move-object/from16 v1, p1

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 268
    :cond_1
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$TableRowDrawable;->tableRow:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$TableRowDrawable;->this$0:Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;

    .line 269
    invoke-static {v2}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->access$400(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;)Landroid/text/TextPaint;

    move-result-object v15

    add-int/lit8 v16, v10, -0xa

    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v13, v1

    invoke-direct/range {v13 .. v20}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    add-int/lit8 v12, v12, 0x5

    int-to-float v2, v12

    const/4 v3, 0x0

    .line 272
    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 273
    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    mul-int/lit8 v12, v12, -0x1

    int-to-float v1, v12

    .line 274
    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$TableRowDrawable;->rowHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$TableRowDrawable;->this$0:Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;

    invoke-static {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->access$300(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
