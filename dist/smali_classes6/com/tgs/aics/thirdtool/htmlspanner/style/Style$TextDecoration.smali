.class public final enum Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;
.super Ljava/lang/Enum;
.source "Style.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextDecoration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

.field public static final enum NORMAL:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

.field public static final enum UNDERLINE:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;


# direct methods
.method private static synthetic $values()[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    const/4 v1, 0x0

    .line 20
    sget-object v2, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;->NORMAL:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;->UNDERLINE:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;->NORMAL:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    const-string v1, "UNDERLINE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;->UNDERLINE:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    invoke-static {}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;->$values()[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    move-result-object v0

    sput-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;->$VALUES:[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;
    .locals 1

    .line 20
    const-class v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    return-object p0
.end method

.method public static values()[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;
    .locals 1

    .line 20
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;->$VALUES:[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    invoke-virtual {v0}, [Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextDecoration;

    return-object v0
.end method
