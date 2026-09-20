.class public final enum Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;
.super Ljava/lang/Enum;
.source "StyleValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

.field public static final enum EM:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

.field public static final enum PERCENTAGE:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

.field public static final enum PX:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;


# direct methods
.method private static synthetic $values()[Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    const/4 v1, 0x0

    .line 17
    sget-object v2, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->PX:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->EM:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->PERCENTAGE:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    const-string v1, "PX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->PX:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    const-string v1, "EM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->EM:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    const-string v1, "PERCENTAGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->PERCENTAGE:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    invoke-static {}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->$values()[Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    move-result-object v0

    sput-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->$VALUES:[Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;
    .locals 1

    .line 17
    const-class v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    return-object p0
.end method

.method public static values()[Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;
    .locals 1

    .line 17
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->$VALUES:[Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    invoke-virtual {v0}, [Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    return-object v0
.end method
