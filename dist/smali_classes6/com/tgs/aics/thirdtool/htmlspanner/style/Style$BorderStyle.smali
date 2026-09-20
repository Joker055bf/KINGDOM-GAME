.class public final enum Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;
.super Ljava/lang/Enum;
.source "Style.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BorderStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

.field public static final enum DASHED:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

.field public static final enum DOTTED:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

.field public static final enum DOUBLE:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

.field public static final enum SOLID:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;


# direct methods
.method private static synthetic $values()[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    const/4 v1, 0x0

    .line 19
    sget-object v2, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;->SOLID:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;->DASHED:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;->DOTTED:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;->DOUBLE:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    const-string v1, "SOLID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;->SOLID:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    const-string v1, "DASHED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;->DASHED:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    const-string v1, "DOTTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;->DOTTED:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    const-string v1, "DOUBLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;->DOUBLE:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    invoke-static {}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;->$values()[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    move-result-object v0

    sput-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;->$VALUES:[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;
    .locals 1

    .line 19
    const-class v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    return-object p0
.end method

.method public static values()[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;
    .locals 1

    .line 19
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;->$VALUES:[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    invoke-virtual {v0}, [Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    return-object v0
.end method
