.class public Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
.super Ljava/lang/Object;
.source "Style.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;,
        Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;,
        Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;,
        Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;,
        Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;,
        Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;
    }
.end annotation


# instance fields
.field private final backgroundColor:Ljava/lang/Integer;

.field private final borderColor:Ljava/lang/Integer;

.field private final borderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

.field private final borderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

.field private final color:Ljava/lang/Integer;

.field private final displayStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

.field private final fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

.field private final fontSize:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

.field private final fontStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

.field private final fontWeight:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

.field private final marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

.field private final marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

.field private final marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

.field private final marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

.field private final textAlignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

.field private final textDecoration:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

.field private final textIndent:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    .line 48
    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textAlignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    .line 49
    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontSize:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    .line 50
    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontWeight:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    .line 51
    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    .line 52
    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textDecoration:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    .line 53
    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->color:Ljava/lang/Integer;

    .line 54
    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->backgroundColor:Ljava/lang/Integer;

    .line 55
    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->displayStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    .line 56
    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    .line 57
    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textIndent:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    .line 58
    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    .line 59
    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    .line 60
    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    .line 62
    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderColor:Ljava/lang/Integer;

    .line 63
    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    .line 64
    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    return-void
.end method

.method public constructor <init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V
    .locals 2

    move-object v0, p0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 73
    iput-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    move-object v1, p2

    .line 74
    iput-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textAlignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    move-object v1, p3

    .line 75
    iput-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontSize:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object v1, p4

    .line 77
    iput-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontWeight:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    move-object v1, p5

    .line 78
    iput-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    move-object v1, p6

    .line 79
    iput-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textDecoration:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    move-object v1, p7

    .line 80
    iput-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->color:Ljava/lang/Integer;

    move-object v1, p8

    .line 81
    iput-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->backgroundColor:Ljava/lang/Integer;

    move-object v1, p9

    .line 82
    iput-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->displayStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    move-object v1, p11

    .line 83
    iput-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 v1, p14

    .line 84
    iput-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textIndent:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object v1, p10

    .line 85
    iput-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object v1, p12

    .line 86
    iput-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object v1, p13

    .line 87
    iput-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 v1, p15

    .line 89
    iput-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderColor:Ljava/lang/Integer;

    move-object/from16 v1, p17

    .line 90
    iput-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 v1, p16

    .line 91
    iput-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    return-void
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/Integer;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->backgroundColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBorderColor()Ljava/lang/Integer;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBorderStyle()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    return-object v0
.end method

.method public getBorderWidth()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    return-object v0
.end method

.method public getColor()Ljava/lang/Integer;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->color:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDisplayStyle()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->displayStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    return-object v0
.end method

.method public getFontFamily()Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    return-object v0
.end method

.method public getFontSize()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontSize:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    return-object v0
.end method

.method public getFontStyle()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    return-object v0
.end method

.method public getFontWeight()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontWeight:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    return-object v0
.end method

.method public getMarginBottom()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    return-object v0
.end method

.method public getMarginLeft()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    return-object v0
.end method

.method public getMarginRight()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    return-object v0
.end method

.method public getMarginTop()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    return-object v0
.end method

.method public getTextAlignment()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textAlignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    return-object v0
.end method

.method public getTextDecoration()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textDecoration:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    return-object v0
.end method

.method public getTextIndent()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textIndent:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    return-object v0
.end method

.method public setBackgroundColor(Ljava/lang/Integer;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 138
    new-instance v19, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    iget-object v3, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textAlignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    iget-object v4, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontSize:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v5, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontWeight:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    iget-object v7, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textDecoration:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    iget-object v8, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->color:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->displayStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    iget-object v11, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v12, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v13, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v14, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v15, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textIndent:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderColor:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v18}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object v19
.end method

.method public setBorderColor(Ljava/lang/Integer;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v16, p1

    .line 194
    new-instance v19, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    iget-object v3, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textAlignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    iget-object v4, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontSize:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v5, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontWeight:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    iget-object v7, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textDecoration:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    iget-object v8, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->color:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->backgroundColor:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->displayStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    iget-object v11, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v12, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v13, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v14, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v15, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textIndent:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v18}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object v19
.end method

.method public setBorderStyle(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    .line 187
    new-instance v19, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    iget-object v3, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textAlignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    iget-object v4, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontSize:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v5, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontWeight:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    iget-object v7, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textDecoration:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    iget-object v8, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->color:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->backgroundColor:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->displayStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    iget-object v11, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v12, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v13, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v14, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v15, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textIndent:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderColor:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v18}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object v19
.end method

.method public setBorderWidth(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v18, p1

    .line 201
    new-instance v19, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    iget-object v3, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textAlignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    iget-object v4, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontSize:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v5, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontWeight:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    iget-object v7, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textDecoration:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    iget-object v8, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->color:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->backgroundColor:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->displayStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    iget-object v11, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v12, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v13, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v14, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v15, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textIndent:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderColor:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v18}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object v19
.end method

.method public setColor(Ljava/lang/Integer;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 131
    new-instance v19, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    iget-object v3, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textAlignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    iget-object v4, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontSize:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v5, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontWeight:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    iget-object v7, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textDecoration:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    iget-object v9, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->backgroundColor:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->displayStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    iget-object v11, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v12, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v13, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v14, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v15, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textIndent:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderColor:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v18}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object v19
.end method

.method public setDisplayStyle(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 145
    new-instance v19, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    iget-object v3, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textAlignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    iget-object v4, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontSize:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v5, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontWeight:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    iget-object v7, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textDecoration:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    iget-object v8, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->color:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->backgroundColor:Ljava/lang/Integer;

    iget-object v11, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v12, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v13, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v14, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v15, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textIndent:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderColor:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v18}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object v19
.end method

.method public setFontFamily(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 95
    new-instance v19, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-object/from16 v1, v19

    iget-object v3, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textAlignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    iget-object v4, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontSize:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v5, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontWeight:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    iget-object v7, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textDecoration:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    iget-object v8, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->color:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->backgroundColor:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->displayStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    iget-object v11, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v12, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v13, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v14, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v15, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textIndent:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderColor:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v18}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object v19
.end method

.method public setFontSize(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    .line 110
    new-instance v19, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    iget-object v3, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textAlignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    iget-object v5, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontWeight:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    iget-object v7, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textDecoration:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    iget-object v8, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->color:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->backgroundColor:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->displayStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    iget-object v11, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v12, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v13, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v14, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v15, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textIndent:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderColor:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v18}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object v19
.end method

.method public setFontStyle(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    .line 124
    new-instance v19, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    iget-object v3, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textAlignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    iget-object v4, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontSize:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v5, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontWeight:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    iget-object v7, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textDecoration:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    iget-object v8, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->color:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->backgroundColor:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->displayStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    iget-object v11, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v12, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v13, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v14, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v15, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textIndent:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderColor:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v18}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object v19
.end method

.method public setFontWeight(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    .line 117
    new-instance v19, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    iget-object v3, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textAlignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    iget-object v4, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontSize:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    iget-object v7, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textDecoration:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    iget-object v8, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->color:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->backgroundColor:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->displayStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    iget-object v11, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v12, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v13, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v14, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v15, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textIndent:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderColor:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v18}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object v19
.end method

.method public setMarginBottom(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    .line 152
    new-instance v19, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    iget-object v3, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textAlignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    iget-object v4, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontSize:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v5, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontWeight:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    iget-object v7, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textDecoration:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    iget-object v8, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->color:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->backgroundColor:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->displayStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    iget-object v11, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v13, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v14, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v15, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textIndent:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderColor:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v18}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object v19
.end method

.method public setMarginLeft(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    .line 166
    new-instance v19, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    iget-object v3, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textAlignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    iget-object v4, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontSize:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v5, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontWeight:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    iget-object v7, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textDecoration:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    iget-object v8, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->color:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->backgroundColor:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->displayStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    iget-object v11, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v12, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v14, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v15, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textIndent:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderColor:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v18}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object v19
.end method

.method public setMarginRight(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    .line 173
    new-instance v19, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    iget-object v3, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textAlignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    iget-object v4, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontSize:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v5, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontWeight:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    iget-object v7, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textDecoration:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    iget-object v8, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->color:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->backgroundColor:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->displayStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    iget-object v11, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v12, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v13, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v15, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textIndent:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderColor:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v18}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object v19
.end method

.method public setMarginTop(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    .line 159
    new-instance v19, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    iget-object v3, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textAlignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    iget-object v4, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontSize:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v5, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontWeight:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    iget-object v7, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textDecoration:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    iget-object v8, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->color:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->backgroundColor:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->displayStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    iget-object v12, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v13, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v14, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v15, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textIndent:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderColor:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v18}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object v19
.end method

.method public setTextAlignment(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    .line 103
    new-instance v19, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    iget-object v4, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontSize:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v5, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontWeight:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    iget-object v7, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textDecoration:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    iget-object v8, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->color:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->backgroundColor:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->displayStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    iget-object v11, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v12, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v13, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v14, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v15, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textIndent:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderColor:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v18}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object v19
.end method

.method public setTextDecoration(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 208
    new-instance v19, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    iget-object v3, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textAlignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    iget-object v4, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontSize:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v5, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontWeight:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    iget-object v8, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->color:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->backgroundColor:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->displayStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    iget-object v11, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v12, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v13, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v14, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v15, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textIndent:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderColor:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v18}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object v19
.end method

.method public setTextIndent(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    .line 180
    new-instance v19, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    iget-object v3, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textAlignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    iget-object v4, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontSize:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v5, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontWeight:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    iget-object v6, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    iget-object v7, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textDecoration:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    iget-object v8, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->color:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->backgroundColor:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->displayStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    iget-object v11, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v12, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v13, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v14, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderColor:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v18}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V

    return-object v19
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    const-string v2, "\n"

    if-eqz v1, :cond_0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  font-family: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontFamily:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    invoke-virtual {v3}, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textAlignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    if-eqz v1, :cond_1

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  text-alignment: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textAlignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontSize:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    if-eqz v1, :cond_2

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  font-size: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontSize:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_2
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontWeight:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    if-eqz v1, :cond_3

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  font-weight: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontWeight:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_3
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    if-eqz v1, :cond_4

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  font-style: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->fontStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_4
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textDecoration:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    if-eqz v1, :cond_5

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  text-decoration: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textDecoration:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_5
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->color:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  color: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->color:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_6
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->backgroundColor:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  background-color: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_7
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->displayStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    if-eqz v1, :cond_8

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  display: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->displayStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_8
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    if-eqz v1, :cond_9

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  margin-top: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_9
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    if-eqz v1, :cond_a

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  margin-bottom: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_a
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    if-eqz v1, :cond_b

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  margin-left: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_b
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    if-eqz v1, :cond_c

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  margin-right: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_c
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textIndent:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    if-eqz v1, :cond_d

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  text-indent: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->textIndent:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_d
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    const-string v3, "  border-style: "

    if-eqz v1, :cond_e

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_e
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderColor:Ljava/lang/Integer;

    if-eqz v1, :cond_f

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  border-color: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderColor:Ljava/lang/Integer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_f
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    if-eqz v1, :cond_10

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->borderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string v1, "}\n"

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
