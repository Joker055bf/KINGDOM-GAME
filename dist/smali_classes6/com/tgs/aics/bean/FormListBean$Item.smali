.class public Lcom/tgs/aics/bean/FormListBean$Item;
.super Ljava/lang/Object;
.source "FormListBean.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/FormListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public convert:Ljava/lang/String;

.field public defaultValue:Ljava/lang/Object;

.field public dynamic:Z

.field public fieldId:Ljava/lang/String;

.field public fieldName:Ljava/lang/Object;

.field public format:Ljava/lang/String;

.field public helpText:Ljava/lang/String;

.field public href:Ljava/lang/String;

.field public isShowRequiredTip:Z

.field public isStart:Z

.field public label:Ljava/lang/Object;

.field public max:I

.field public maxCount:I

.field public min:I

.field public mode:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public numberFormat:I

.field public numberPrecision:I

.field public options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public placeholder:Ljava/lang/String;

.field public regExpression:Ljava/lang/String;

.field public required:Z

.field public selectIndexs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public text:Ljava/lang/String;

.field public type:Lcom/tgs/aics/bean/FieldType;

.field public url:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/tgs/aics/bean/FormListBean$Item;
    .locals 1

    .line 232
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/FormListBean$Item;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lcom/tgs/aics/bean/FormListBean$Item;->clone()Lcom/tgs/aics/bean/FormListBean$Item;

    move-result-object v0

    return-object v0
.end method

.method public refreshValue()V
    .locals 8

    const-string v0, ""

    .line 214
    iput-object v0, p0, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    .line 215
    iget-object v1, p0, Lcom/tgs/aics/bean/FormListBean$Item;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 216
    iget-object v5, p0, Lcom/tgs/aics/bean/FormListBean$Item;->selectIndexs:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 217
    iget-object v5, p0, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    const-string v6, "label"

    if-eqz v5, :cond_0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 218
    iget-object v7, p0, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    aput-object v7, v5, v2

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const-string v4, "%s,%s"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    goto :goto_1

    .line 220
    :cond_0
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
