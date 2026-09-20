.class public Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler;
.super Ljava/lang/Object;
.source "CSSCompiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;,
        Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$TagNodeMatcher;,
        Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$ClassMatcher;,
        Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$IdMatcher;,
        Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$TagNameMatcher;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compile(Lcom/osbcp/cssparser/Rule;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;
    .locals 7

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Compiling rule "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSSCompiler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/osbcp/cssparser/Rule;->getSelectors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/osbcp/cssparser/Selector;

    .line 44
    invoke-static {v4}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler;->createMatchersFromSelector(Lcom/osbcp/cssparser/Selector;)Ljava/util/List;

    move-result-object v4

    .line 45
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :cond_0
    new-instance v3, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-direct {v3}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/osbcp/cssparser/Rule;->getPropertyValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/osbcp/cssparser/PropertyValue;

    .line 51
    invoke-virtual {v5}, Lcom/osbcp/cssparser/PropertyValue;->getProperty()Ljava/lang/String;

    move-result-object v6

    .line 52
    invoke-virtual {v5}, Lcom/osbcp/cssparser/PropertyValue;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-static {v6, v5}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler;->getStyleUpdater(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 55
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-interface {v5, v3, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;->updateStyle(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v3

    goto :goto_1

    .line 60
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Compiled rule: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lcom/osbcp/cssparser/Rule;->toString()Ljava/lang/String;

    move-result-object p0

    .line 64
    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;

    invoke-direct {v1, p1, v0, v2, p0}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CompiledRule;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method private static createMatcherFromPart(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$TagNodeMatcher;
    .locals 3

    const/16 v0, 0x2e

    .line 130
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 131
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$ClassMatcher;

    invoke-direct {v0, p0, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$ClassMatcher;-><init>(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$1;)V

    return-object v0

    :cond_0
    const-string v0, "#"

    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$IdMatcher;

    invoke-direct {v0, p0, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$IdMatcher;-><init>(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$1;)V

    return-object v0

    .line 138
    :cond_1
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$TagNameMatcher;

    invoke-direct {v0, p0, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$TagNameMatcher;-><init>(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$1;)V

    return-object v0
.end method

.method public static createMatchersFromSelector(Lcom/osbcp/cssparser/Selector;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/osbcp/cssparser/Selector;",
            ")",
            "Ljava/util/List<",
            "Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$TagNodeMatcher;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-virtual {p0}, Lcom/osbcp/cssparser/Selector;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\s"

    .line 117
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 120
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 121
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler;->createMatcherFromPart(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$TagNodeMatcher;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getStyleUpdater(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;
    .locals 5

    const-string v0, "color"

    .line 209
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Can\'t parse colour definition: "

    const/4 v2, 0x0

    const-string v3, "CSSCompiler"

    if-eqz v0, :cond_0

    .line 211
    :try_start_0
    invoke-static {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler;->parseCSSColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 212
    new-instance v4, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$1;

    invoke-direct {v4, p0, p1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 220
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const-string v0, "background-color"

    .line 225
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    :try_start_1
    invoke-static {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler;->parseCSSColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 228
    new-instance v4, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$2;

    invoke-direct {v4, p0, p1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 236
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    const-string v0, "align"

    .line 241
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "text-align"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string v0, "font-weight"

    .line 258
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;->valueOf(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    move-result-object v0

    .line 263
    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$4;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v1

    .line 272
    :catch_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t parse font-weight: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    const-string v0, "font-style"

    .line 277
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 279
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;->valueOf(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    move-result-object v0

    .line 280
    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$5;

    invoke-direct {v1, p0, p1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$5;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v1

    .line 289
    :catch_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t parse font-style: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    const-string v0, "font-family"

    .line 294
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 295
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$6;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_5
    const-string v0, "font-size"

    .line 310
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 312
    invoke-static {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->parse(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 316
    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$7;

    invoke-direct {v1, p0, p1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$7;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object v1

    .line 328
    :cond_6
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler;->translateFontSize(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 329
    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$8;

    invoke-direct {v1, p0, p1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    return-object v1

    .line 337
    :catch_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t parse font-size: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_7
    const-string v0, "text-decoration"

    .line 343
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "underline"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 344
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$9;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$9;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_8
    const-string v0, "margin-bottom"

    .line 353
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 355
    invoke-static {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->parse(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 358
    new-instance p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$10;

    invoke-direct {p0, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$10;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object p0

    :cond_9
    const-string v0, "margin-top"

    .line 367
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 369
    invoke-static {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->parse(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 372
    new-instance p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$11;

    invoke-direct {p0, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$11;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object p0

    :cond_a
    const-string v0, "margin-left"

    .line 381
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 383
    invoke-static {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->parse(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 386
    new-instance p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$12;

    invoke-direct {p0, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$12;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object p0

    :cond_b
    const-string v0, "margin-right"

    .line 395
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 397
    invoke-static {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->parse(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 400
    new-instance p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$13;

    invoke-direct {p0, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$13;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object p0

    :cond_c
    const-string v0, "margin"

    .line 409
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 410
    invoke-static {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler;->parseMargin(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;

    move-result-object p0

    return-object p0

    :cond_d
    const-string v0, "text-indent"

    .line 413
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 414
    invoke-static {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->parse(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 417
    new-instance p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$14;

    invoke-direct {p0, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$14;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object p0

    :cond_e
    const-string v0, "display"

    .line 426
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 428
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;->valueOf(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    move-result-object p0

    .line 429
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$15;

    invoke-direct {v0, p0}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$15;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    return-object v0

    .line 436
    :catch_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t parse display-value: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_f
    const-string v0, "border-style"

    .line 441
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 443
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;->valueOf(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    move-result-object p0

    .line 444
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$16;

    invoke-direct {v0, p0}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$16;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6

    return-object v0

    .line 451
    :catch_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Could not parse border-style "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_10
    const-string v0, "border-color"

    .line 456
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Could not parse border-color "

    if-eqz v0, :cond_11

    .line 458
    :try_start_7
    invoke-static {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler;->parseCSSColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 459
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$17;

    invoke-direct {v0, p0}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$17;-><init>(Ljava/lang/Integer;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_7

    return-object v0

    .line 466
    :catch_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_11
    const-string v0, "border-width"

    .line 471
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 473
    invoke-static {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->parse(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 475
    new-instance p1, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$18;

    invoke-direct {p1, p0}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$18;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object p1

    .line 482
    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_13
    const-string v0, "border"

    .line 488
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 489
    invoke-static {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler;->parseBorder(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;

    move-result-object p0

    return-object p0

    .line 492
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Don\'t understand CSS property \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\'. Ignoring it."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 243
    :cond_15
    :goto_0
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;->valueOf(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    move-result-object v0

    .line 244
    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$3;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_8

    return-object v1

    .line 253
    :catch_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t parse alignment: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private static parseBorder(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;
    .locals 10

    const-string v0, "\\s"

    .line 528
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 534
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v4, v2

    move-object v2, v3

    :goto_0
    if-ge v4, v0, :cond_3

    aget-object v5, p0, v4

    .line 536
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Trying to parse "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CSSParser"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "Parsed "

    if-nez v1, :cond_0

    .line 540
    invoke-static {v5}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->parse(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 543
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " as border-width"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    .line 550
    :try_start_0
    invoke-static {v5}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler;->parseCSSColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 551
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " as border-color"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    if-nez v3, :cond_2

    .line 560
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;->valueOf(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    move-result-object v3

    .line 561
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " as border-style"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 568
    :catch_1
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Could not make sense of border-spec "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 575
    :cond_3
    new-instance p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$19;

    invoke-direct {p0, v2, v1, v3}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$19;-><init>(Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;)V

    return-object p0
.end method

.method public static parseCSSColor(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6

    const-string v0, "#"

    const/4 v1, 0x0

    .line 70
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v0, v4

    .line 72
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 74
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v0, "rgb("

    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 86
    array-length v0, p0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 88
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 89
    aget-object v2, p0, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    .line 90
    aget-object p0, p0, v3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ltz v0, :cond_3

    const/16 v3, 0xff

    if-gt v0, v3, :cond_3

    if-ltz v2, :cond_3

    if-gt v2, v3, :cond_3

    if-ltz p0, :cond_3

    if-le p0, v3, :cond_2

    goto :goto_1

    .line 98
    :cond_2
    invoke-static {v0, v2, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 94
    :cond_3
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 100
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 105
    :cond_5
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 108
    :catch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static parseMargin(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;
    .locals 7

    const-string v0, "\\s"

    .line 599
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 608
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 609
    aget-object p0, p0, v1

    :goto_0
    move-object v0, p0

    move-object v1, v0

    :goto_1
    move-object v2, v1

    goto :goto_2

    .line 613
    :cond_0
    array-length v0, p0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 614
    aget-object v0, p0, v1

    .line 616
    aget-object p0, p0, v2

    move-object v1, p0

    move-object v2, v1

    move-object p0, v0

    goto :goto_2

    .line 618
    :cond_1
    array-length v0, p0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 619
    aget-object v0, p0, v1

    .line 620
    aget-object v1, p0, v2

    .line 622
    aget-object p0, p0, v3

    goto :goto_1

    .line 623
    :cond_2
    array-length v0, p0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_3

    .line 624
    aget-object v0, p0, v1

    .line 625
    aget-object v1, p0, v2

    .line 626
    aget-object v2, p0, v3

    .line 627
    aget-object p0, p0, v4

    move-object v6, v1

    move-object v1, p0

    move-object p0, v2

    move-object v2, v6

    goto :goto_2

    :cond_3
    const-string p0, ""

    goto :goto_0

    .line 630
    :goto_2
    invoke-static {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->parse(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object p0

    .line 631
    invoke-static {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->parse(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object v0

    .line 632
    invoke-static {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->parse(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object v1

    .line 633
    invoke-static {v2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->parse(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-result-object v2

    .line 636
    new-instance v3, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$20;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$20;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object v3
.end method

.method private static translateFontSize(I)F
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    const p0, 0x3fe66666

    return p0

    :cond_1
    const p0, 0x3fcccccd

    return p0

    :cond_2
    const p0, 0x3fb33333

    return p0

    :cond_3
    const p0, 0x3f99999a

    return p0

    :cond_4
    const p0, 0x3f4ccccd

    return p0

    :cond_5
    const p0, 0x3f19999a

    return p0
.end method
