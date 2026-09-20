.class public final enum Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/core/OmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LOAD_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

.field public static final enum CLOSE:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

.field public static final enum INIT:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

.field public static final enum INTERVAL:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

.field public static final enum MANUAL:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

.field public static final enum UNKNOWN:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->UNKNOWN:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    new-instance v1, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    const-string v3, "INIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->INIT:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    new-instance v3, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    const-string v5, "INTERVAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->INTERVAL:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    new-instance v5, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    const-string v7, "CLOSE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->CLOSE:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    new-instance v7, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    const-string v9, "MANUAL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->MANUAL:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->$VALUES:[Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;
    .locals 1

    const-class v0, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->$VALUES:[Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    invoke-virtual {v0}, [Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->mValue:I

    return v0
.end method
