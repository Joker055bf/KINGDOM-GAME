.class public final enum Lcom/t4f/anim/AnimManager$InjectMode;
.super Ljava/lang/Enum;
.source "AnimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4f/anim/AnimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InjectMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/t4f/anim/AnimManager$InjectMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/t4f/anim/AnimManager$InjectMode;

.field public static final enum AUTO_PLAY:Lcom/t4f/anim/AnimManager$InjectMode;

.field public static final enum FIRST_FRAME:Lcom/t4f/anim/AnimManager$InjectMode;

.field public static final enum PREPARE:Lcom/t4f/anim/AnimManager$InjectMode;


# direct methods
.method private static synthetic $values()[Lcom/t4f/anim/AnimManager$InjectMode;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/t4f/anim/AnimManager$InjectMode;

    const/4 v1, 0x0

    .line 36
    sget-object v2, Lcom/t4f/anim/AnimManager$InjectMode;->PREPARE:Lcom/t4f/anim/AnimManager$InjectMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/t4f/anim/AnimManager$InjectMode;->FIRST_FRAME:Lcom/t4f/anim/AnimManager$InjectMode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/t4f/anim/AnimManager$InjectMode;->AUTO_PLAY:Lcom/t4f/anim/AnimManager$InjectMode;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lcom/t4f/anim/AnimManager$InjectMode;

    const-string v1, "PREPARE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/t4f/anim/AnimManager$InjectMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/t4f/anim/AnimManager$InjectMode;->PREPARE:Lcom/t4f/anim/AnimManager$InjectMode;

    .line 44
    new-instance v0, Lcom/t4f/anim/AnimManager$InjectMode;

    const-string v1, "FIRST_FRAME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/t4f/anim/AnimManager$InjectMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/t4f/anim/AnimManager$InjectMode;->FIRST_FRAME:Lcom/t4f/anim/AnimManager$InjectMode;

    .line 48
    new-instance v0, Lcom/t4f/anim/AnimManager$InjectMode;

    const-string v1, "AUTO_PLAY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/t4f/anim/AnimManager$InjectMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/t4f/anim/AnimManager$InjectMode;->AUTO_PLAY:Lcom/t4f/anim/AnimManager$InjectMode;

    .line 36
    invoke-static {}, Lcom/t4f/anim/AnimManager$InjectMode;->$values()[Lcom/t4f/anim/AnimManager$InjectMode;

    move-result-object v0

    sput-object v0, Lcom/t4f/anim/AnimManager$InjectMode;->$VALUES:[Lcom/t4f/anim/AnimManager$InjectMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/t4f/anim/AnimManager$InjectMode;
    .locals 1

    .line 36
    const-class v0, Lcom/t4f/anim/AnimManager$InjectMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/t4f/anim/AnimManager$InjectMode;

    return-object p0
.end method

.method public static values()[Lcom/t4f/anim/AnimManager$InjectMode;
    .locals 1

    .line 36
    sget-object v0, Lcom/t4f/anim/AnimManager$InjectMode;->$VALUES:[Lcom/t4f/anim/AnimManager$InjectMode;

    invoke-virtual {v0}, [Lcom/t4f/anim/AnimManager$InjectMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/t4f/anim/AnimManager$InjectMode;

    return-object v0
.end method
