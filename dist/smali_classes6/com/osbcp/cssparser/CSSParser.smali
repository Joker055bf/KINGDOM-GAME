.class public final Lcom/osbcp/cssparser/CSSParser;
.super Ljava/lang/Object;
.source "CSSParser.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$osbcp$cssparser$State:[I


# instance fields
.field private beforeCommentMode:Lcom/osbcp/cssparser/State;

.field private previousChar:Ljava/lang/Character;

.field private propertyName:Ljava/lang/String;

.field private selectorName:Ljava/lang/String;

.field private final selectorNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/osbcp/cssparser/State;

.field private valueName:Ljava/lang/String;

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/osbcp/cssparser/PropertyValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$osbcp$cssparser$State()[I
    .locals 3

    .line 31
    sget-object v0, Lcom/osbcp/cssparser/CSSParser;->$SWITCH_TABLE$com$osbcp$cssparser$State:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/osbcp/cssparser/State;->values()[Lcom/osbcp/cssparser/State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/osbcp/cssparser/State;->INSIDE_COMMENT:Lcom/osbcp/cssparser/State;

    invoke-virtual {v1}, Lcom/osbcp/cssparser/State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/osbcp/cssparser/State;->INSIDE_PROPERTY_NAME:Lcom/osbcp/cssparser/State;

    invoke-virtual {v1}, Lcom/osbcp/cssparser/State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/osbcp/cssparser/State;->INSIDE_SELECTOR:Lcom/osbcp/cssparser/State;

    invoke-virtual {v1}, Lcom/osbcp/cssparser/State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/osbcp/cssparser/State;->INSIDE_VALUE:Lcom/osbcp/cssparser/State;

    invoke-virtual {v1}, Lcom/osbcp/cssparser/State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/osbcp/cssparser/State;->INSIDE_VALUE_ROUND_BRACKET:Lcom/osbcp/cssparser/State;

    invoke-virtual {v1}, Lcom/osbcp/cssparser/State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    sput-object v0, Lcom/osbcp/cssparser/CSSParser;->$SWITCH_TABLE$com$osbcp$cssparser$State:[I

    return-object v0
.end method

.method private constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 86
    iput-object v0, p0, Lcom/osbcp/cssparser/CSSParser;->selectorName:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/osbcp/cssparser/CSSParser;->propertyName:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/osbcp/cssparser/CSSParser;->valueName:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/osbcp/cssparser/CSSParser;->values:Ljava/util/List;

    .line 91
    sget-object v0, Lcom/osbcp/cssparser/State;->INSIDE_SELECTOR:Lcom/osbcp/cssparser/State;

    iput-object v0, p0, Lcom/osbcp/cssparser/CSSParser;->state:Lcom/osbcp/cssparser/State;

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/osbcp/cssparser/CSSParser;->previousChar:Ljava/lang/Character;

    .line 93
    iput-object v0, p0, Lcom/osbcp/cssparser/CSSParser;->beforeCommentMode:Lcom/osbcp/cssparser/State;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/osbcp/cssparser/CSSParser;->selectorNames:Ljava/util/List;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/osbcp/cssparser/Rule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/osbcp/cssparser/CSSParser;

    invoke-direct {v0}, Lcom/osbcp/cssparser/CSSParser;-><init>()V

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    .line 51
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_1

    return-object v1

    .line 53
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_2

    add-int/lit8 v4, v2, 0x1

    .line 57
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 58
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Lcom/osbcp/cssparser/CSSParser;->parse(Ljava/util/List;Ljava/lang/Character;Ljava/lang/Character;)V

    goto :goto_1

    .line 62
    :cond_2
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4}, Lcom/osbcp/cssparser/CSSParser;->parse(Ljava/util/List;Ljava/lang/Character;Ljava/lang/Character;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v1
.end method

.method private parse(Ljava/util/List;Ljava/lang/Character;Ljava/lang/Character;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/osbcp/cssparser/Rule;",
            ">;",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    sget-object v0, Lcom/osbcp/cssparser/Chars;->SLASH:Ljava/lang/Character;

    invoke-virtual {v0, p2}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/osbcp/cssparser/Chars;->STAR:Ljava/lang/Character;

    invoke-virtual {v0, p3}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 110
    iget-object p3, p0, Lcom/osbcp/cssparser/CSSParser;->state:Lcom/osbcp/cssparser/State;

    iput-object p3, p0, Lcom/osbcp/cssparser/CSSParser;->beforeCommentMode:Lcom/osbcp/cssparser/State;

    .line 111
    sget-object p3, Lcom/osbcp/cssparser/State;->INSIDE_COMMENT:Lcom/osbcp/cssparser/State;

    iput-object p3, p0, Lcom/osbcp/cssparser/CSSParser;->state:Lcom/osbcp/cssparser/State;

    .line 114
    :cond_0
    invoke-static {}, Lcom/osbcp/cssparser/CSSParser;->$SWITCH_TABLE$com$osbcp$cssparser$State()[I

    move-result-object p3

    iget-object v0, p0, Lcom/osbcp/cssparser/CSSParser;->state:Lcom/osbcp/cssparser/State;

    invoke-virtual {v0}, Lcom/osbcp/cssparser/State;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_5

    const/4 v0, 0x2

    if-eq p3, v0, :cond_4

    const/4 v0, 0x3

    if-eq p3, v0, :cond_3

    const/4 p1, 0x4

    if-eq p3, p1, :cond_2

    const/4 p1, 0x5

    if-eq p3, p1, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    invoke-direct {p0, p2}, Lcom/osbcp/cssparser/CSSParser;->parseValueInsideRoundBrackets(Ljava/lang/Character;)V

    goto :goto_0

    .line 129
    :cond_2
    invoke-direct {p0, p2}, Lcom/osbcp/cssparser/CSSParser;->parseValue(Ljava/lang/Character;)V

    goto :goto_0

    .line 125
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/osbcp/cssparser/CSSParser;->parsePropertyName(Ljava/util/List;Ljava/lang/Character;)V

    goto :goto_0

    .line 121
    :cond_4
    invoke-direct {p0, p2}, Lcom/osbcp/cssparser/CSSParser;->parseComment(Ljava/lang/Character;)V

    goto :goto_0

    .line 117
    :cond_5
    invoke-direct {p0, p2}, Lcom/osbcp/cssparser/CSSParser;->parseSelector(Ljava/lang/Character;)V

    .line 140
    :goto_0
    iput-object p2, p0, Lcom/osbcp/cssparser/CSSParser;->previousChar:Ljava/lang/Character;

    return-void
.end method

.method private parseComment(Ljava/lang/Character;)V
    .locals 2

    .line 294
    sget-object v0, Lcom/osbcp/cssparser/Chars;->STAR:Ljava/lang/Character;

    iget-object v1, p0, Lcom/osbcp/cssparser/CSSParser;->previousChar:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/osbcp/cssparser/Chars;->SLASH:Ljava/lang/Character;

    invoke-virtual {v0, p1}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 296
    iget-object p1, p0, Lcom/osbcp/cssparser/CSSParser;->beforeCommentMode:Lcom/osbcp/cssparser/State;

    iput-object p1, p0, Lcom/osbcp/cssparser/CSSParser;->state:Lcom/osbcp/cssparser/State;

    :cond_0
    return-void
.end method

.method private parsePropertyName(Ljava/util/List;Ljava/lang/Character;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/osbcp/cssparser/Rule;",
            ">;",
            "Ljava/lang/Character;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/osbcp/cssparser/IncorrectFormatException;
        }
    .end annotation

    .line 226
    sget-object v0, Lcom/osbcp/cssparser/Chars;->COLON:Ljava/lang/Character;

    invoke-virtual {v0, p2}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    sget-object p1, Lcom/osbcp/cssparser/State;->INSIDE_VALUE:Lcom/osbcp/cssparser/State;

    iput-object p1, p0, Lcom/osbcp/cssparser/CSSParser;->state:Lcom/osbcp/cssparser/State;

    return-void

    .line 231
    :cond_0
    sget-object v0, Lcom/osbcp/cssparser/Chars;->SEMI_COLON:Ljava/lang/Character;

    invoke-virtual {v0, p2}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 235
    sget-object v0, Lcom/osbcp/cssparser/Chars;->BRACKET_END:Ljava/lang/Character;

    invoke-virtual {v0, p2}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 237
    new-instance v0, Lcom/osbcp/cssparser/Rule;

    invoke-direct {v0}, Lcom/osbcp/cssparser/Rule;-><init>()V

    .line 243
    iget-object p2, p0, Lcom/osbcp/cssparser/CSSParser;->selectorNames:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_3

    .line 247
    iget-object p2, p0, Lcom/osbcp/cssparser/CSSParser;->selectorNames:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 249
    new-instance p2, Lcom/osbcp/cssparser/Selector;

    iget-object v1, p0, Lcom/osbcp/cssparser/CSSParser;->selectorName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/osbcp/cssparser/Selector;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    .line 250
    iput-object v1, p0, Lcom/osbcp/cssparser/CSSParser;->selectorName:Ljava/lang/String;

    .line 251
    invoke-virtual {v0, p2}, Lcom/osbcp/cssparser/Rule;->addSelector(Lcom/osbcp/cssparser/Selector;)V

    .line 254
    iget-object p2, p0, Lcom/osbcp/cssparser/CSSParser;->values:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 269
    iget-object p2, p0, Lcom/osbcp/cssparser/CSSParser;->values:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 271
    invoke-virtual {v0}, Lcom/osbcp/cssparser/Rule;->getPropertyValues()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 272
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_1
    sget-object p1, Lcom/osbcp/cssparser/State;->INSIDE_SELECTOR:Lcom/osbcp/cssparser/State;

    iput-object p1, p0, Lcom/osbcp/cssparser/CSSParser;->state:Lcom/osbcp/cssparser/State;

    return-void

    .line 254
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/osbcp/cssparser/PropertyValue;

    .line 255
    invoke-virtual {v0, v1}, Lcom/osbcp/cssparser/Rule;->addPropertyValue(Lcom/osbcp/cssparser/PropertyValue;)V

    goto :goto_1

    .line 243
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 244
    new-instance v2, Lcom/osbcp/cssparser/Selector;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Lcom/osbcp/cssparser/Selector;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0, v2}, Lcom/osbcp/cssparser/Rule;->addSelector(Lcom/osbcp/cssparser/Selector;)V

    goto :goto_0

    .line 279
    :cond_4
    iget-object p1, p0, Lcom/osbcp/cssparser/CSSParser;->propertyName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/osbcp/cssparser/CSSParser;->propertyName:Ljava/lang/String;

    return-void

    .line 233
    :cond_5
    new-instance p1, Lcom/osbcp/cssparser/IncorrectFormatException;

    sget-object v0, Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;->FOUND_SEMICOLON_WHEN_READING_PROPERTY_NAME:Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected character \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\' for property \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/osbcp/cssparser/CSSParser;->propertyName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\' in the selector \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/osbcp/cssparser/CSSParser;->selectorName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\' should end with an \';\', not with \'}\'."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/osbcp/cssparser/IncorrectFormatException;-><init>(Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method private parseSelector(Ljava/lang/Character;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/osbcp/cssparser/IncorrectFormatException;
        }
    .end annotation

    .line 312
    sget-object v0, Lcom/osbcp/cssparser/Chars;->BRACKET_BEG:Ljava/lang/Character;

    invoke-virtual {v0, p1}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    sget-object p1, Lcom/osbcp/cssparser/State;->INSIDE_PROPERTY_NAME:Lcom/osbcp/cssparser/State;

    iput-object p1, p0, Lcom/osbcp/cssparser/CSSParser;->state:Lcom/osbcp/cssparser/State;

    return-void

    .line 317
    :cond_0
    sget-object v0, Lcom/osbcp/cssparser/Chars;->COMMA:Ljava/lang/Character;

    invoke-virtual {v0, p1}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    iget-object p1, p0, Lcom/osbcp/cssparser/CSSParser;->selectorName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 323
    iget-object p1, p0, Lcom/osbcp/cssparser/CSSParser;->selectorNames:Ljava/util/List;

    iget-object v0, p0, Lcom/osbcp/cssparser/CSSParser;->selectorName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, ""

    .line 324
    iput-object p1, p0, Lcom/osbcp/cssparser/CSSParser;->selectorName:Ljava/lang/String;

    return-void

    .line 320
    :cond_1
    new-instance p1, Lcom/osbcp/cssparser/IncorrectFormatException;

    sget-object v0, Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;->FOUND_COLON_WHEN_READING_SELECTOR_NAME:Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

    const-string v1, "Found an \',\' in a selector name without any actual name before it."

    invoke-direct {p1, v0, v1}, Lcom/osbcp/cssparser/IncorrectFormatException;-><init>(Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;Ljava/lang/String;)V

    throw p1

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/osbcp/cssparser/CSSParser;->selectorName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/osbcp/cssparser/CSSParser;->selectorName:Ljava/lang/String;

    return-void
.end method

.method private parseValue(Ljava/lang/Character;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/osbcp/cssparser/IncorrectFormatException;
        }
    .end annotation

    .line 156
    sget-object v0, Lcom/osbcp/cssparser/Chars;->SEMI_COLON:Ljava/lang/Character;

    invoke-virtual {v0, p1}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance p1, Lcom/osbcp/cssparser/PropertyValue;

    iget-object v0, p0, Lcom/osbcp/cssparser/CSSParser;->propertyName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/osbcp/cssparser/CSSParser;->valueName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/osbcp/cssparser/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/osbcp/cssparser/CSSParser;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, ""

    .line 162
    iput-object p1, p0, Lcom/osbcp/cssparser/CSSParser;->propertyName:Ljava/lang/String;

    .line 163
    iput-object p1, p0, Lcom/osbcp/cssparser/CSSParser;->valueName:Ljava/lang/String;

    .line 165
    sget-object p1, Lcom/osbcp/cssparser/State;->INSIDE_PROPERTY_NAME:Lcom/osbcp/cssparser/State;

    iput-object p1, p0, Lcom/osbcp/cssparser/CSSParser;->state:Lcom/osbcp/cssparser/State;

    return-void

    .line 168
    :cond_0
    sget-object v0, Lcom/osbcp/cssparser/Chars;->ROUND_BRACKET_BEG:Ljava/lang/Character;

    invoke-virtual {v0, p1}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object p1, p0, Lcom/osbcp/cssparser/CSSParser;->valueName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/osbcp/cssparser/Chars;->ROUND_BRACKET_BEG:Ljava/lang/Character;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/osbcp/cssparser/CSSParser;->valueName:Ljava/lang/String;

    .line 172
    sget-object p1, Lcom/osbcp/cssparser/State;->INSIDE_VALUE_ROUND_BRACKET:Lcom/osbcp/cssparser/State;

    iput-object p1, p0, Lcom/osbcp/cssparser/CSSParser;->state:Lcom/osbcp/cssparser/State;

    return-void

    .line 175
    :cond_1
    sget-object v0, Lcom/osbcp/cssparser/Chars;->COLON:Ljava/lang/Character;

    invoke-virtual {v0, p1}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\' in the selector \'"

    const-string v2, "\' for property \'"

    const-string v3, "The value \'"

    if-nez v0, :cond_3

    .line 179
    sget-object v0, Lcom/osbcp/cssparser/Chars;->BRACKET_END:Ljava/lang/Character;

    invoke-virtual {v0, p1}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/osbcp/cssparser/CSSParser;->valueName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/osbcp/cssparser/CSSParser;->valueName:Ljava/lang/String;

    return-void

    .line 181
    :cond_2
    new-instance p1, Lcom/osbcp/cssparser/IncorrectFormatException;

    sget-object v0, Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;->FOUND_END_BRACKET_BEFORE_SEMICOLON:Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/osbcp/cssparser/CSSParser;->valueName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/osbcp/cssparser/CSSParser;->propertyName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/osbcp/cssparser/CSSParser;->selectorName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' should end with an \';\', not with \'}\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/osbcp/cssparser/IncorrectFormatException;-><init>(Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;Ljava/lang/String;)V

    throw p1

    .line 177
    :cond_3
    new-instance p1, Lcom/osbcp/cssparser/IncorrectFormatException;

    sget-object v0, Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;->FOUND_COLON_WHILE_READING_VALUE:Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/osbcp/cssparser/CSSParser;->valueName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/osbcp/cssparser/CSSParser;->propertyName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/osbcp/cssparser/CSSParser;->selectorName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' had a \':\' character."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/osbcp/cssparser/IncorrectFormatException;-><init>(Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method private parseValueInsideRoundBrackets(Ljava/lang/Character;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/osbcp/cssparser/IncorrectFormatException;
        }
    .end annotation

    .line 201
    sget-object v0, Lcom/osbcp/cssparser/Chars;->ROUND_BRACKET_END:Ljava/lang/Character;

    invoke-virtual {v0, p1}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object p1, p0, Lcom/osbcp/cssparser/CSSParser;->valueName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/osbcp/cssparser/Chars;->ROUND_BRACKET_END:Ljava/lang/Character;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/osbcp/cssparser/CSSParser;->valueName:Ljava/lang/String;

    .line 204
    sget-object p1, Lcom/osbcp/cssparser/State;->INSIDE_VALUE:Lcom/osbcp/cssparser/State;

    iput-object p1, p0, Lcom/osbcp/cssparser/CSSParser;->state:Lcom/osbcp/cssparser/State;

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/osbcp/cssparser/CSSParser;->valueName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/osbcp/cssparser/CSSParser;->valueName:Ljava/lang/String;

    return-void
.end method
