.class public final enum Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;
.super Ljava/lang/Enum;
.source "Style.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FontStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

.field public static final enum ITALIC:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

.field public static final enum NORMAL:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;


# direct methods
.method private static synthetic $values()[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    const/4 v1, 0x0

    .line 17
    sget-object v2, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;->NORMAL:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;->ITALIC:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;->NORMAL:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    const-string v1, "ITALIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;->ITALIC:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    invoke-static {}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;->$values()[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    move-result-object v0

    sput-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;->$VALUES:[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;
    .locals 1

    .line 17
    const-class v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    return-object p0
.end method

.method public static values()[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;
    .locals 1

    .line 17
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;->$VALUES:[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    invoke-virtual {v0}, [Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontStyle;

    return-object v0
.end method
