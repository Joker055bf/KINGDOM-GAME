.class public final enum Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;
.super Ljava/lang/Enum;
.source "Style.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextAlignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

.field public static final enum CENTER:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

.field public static final enum LEFT:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

.field public static final enum RIGHT:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;


# direct methods
.method private static synthetic $values()[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    const/4 v1, 0x0

    .line 15
    sget-object v2, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;->LEFT:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;->CENTER:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;->RIGHT:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;->LEFT:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    const-string v1, "CENTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;->CENTER:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    const-string v1, "RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;->RIGHT:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    invoke-static {}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;->$values()[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    move-result-object v0

    sput-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;->$VALUES:[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;
    .locals 1

    .line 15
    const-class v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    return-object p0
.end method

.method public static values()[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;
    .locals 1

    .line 15
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;->$VALUES:[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    invoke-virtual {v0}, [Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    return-object v0
.end method
