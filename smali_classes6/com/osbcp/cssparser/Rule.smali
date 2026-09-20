.class public final Lcom/osbcp/cssparser/Rule;
.super Ljava/lang/Object;
.source "Rule.java"


# instance fields
.field private propertyValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/osbcp/cssparser/PropertyValue;",
            ">;"
        }
    .end annotation
.end field

.field private selectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/osbcp/cssparser/Selector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/osbcp/cssparser/Rule;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/osbcp/cssparser/Selector;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/osbcp/cssparser/Rule;-><init>()V

    .line 43
    iget-object v0, p0, Lcom/osbcp/cssparser/Rule;->selectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/osbcp/cssparser/Selector;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/osbcp/cssparser/Rule;->selectors:Ljava/util/List;

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/osbcp/cssparser/Rule;->propertyValues:Ljava/util/List;

    return-void
.end method

.method private implode(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/osbcp/cssparser/Selector;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 160
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 162
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/osbcp/cssparser/Selector;

    .line 164
    invoke-virtual {v1}, Lcom/osbcp/cssparser/Selector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public addPropertyValue(Lcom/osbcp/cssparser/PropertyValue;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/osbcp/cssparser/Rule;->propertyValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSelector(Lcom/osbcp/cssparser/Selector;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/osbcp/cssparser/Rule;->selectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSelectors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/osbcp/cssparser/Selector;",
            ">;)V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/osbcp/cssparser/Rule;->selectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getPropertyValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/osbcp/cssparser/PropertyValue;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/osbcp/cssparser/Rule;->propertyValues:Ljava/util/List;

    return-object v0
.end method

.method public getSelectors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/osbcp/cssparser/Selector;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/osbcp/cssparser/Rule;->selectors:Ljava/util/List;

    return-object v0
.end method

.method public removePropertyValue(Lcom/osbcp/cssparser/PropertyValue;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/osbcp/cssparser/Rule;->propertyValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeSelector(Lcom/osbcp/cssparser/Selector;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/osbcp/cssparser/Rule;->selectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/osbcp/cssparser/Rule;->selectors:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/osbcp/cssparser/Rule;->implode(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Lcom/osbcp/cssparser/Rule;->propertyValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "}\n"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/osbcp/cssparser/PropertyValue;

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\t"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
