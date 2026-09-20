.class public final enum Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/utils/model/BaseInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MEDIATION_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

.field public static final enum AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

.field public static final enum CAPPED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

.field public static final enum CAPPED_PER_DAY:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

.field public static final enum CAPPED_PER_SESSION:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

.field public static final enum INITIATED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

.field public static final enum INIT_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

.field public static final enum INIT_PENDING:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

.field public static final enum LOAD_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

.field public static final enum LOAD_PENDING:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

.field public static final enum NOT_AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

.field public static final enum NOT_INITIATED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

.field public static final enum SKIP:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const-string v1, "NOT_INITIATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->NOT_INITIATED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    new-instance v1, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const-string v3, "INIT_FAILED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->INIT_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    new-instance v3, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const-string v5, "INITIATED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->INITIATED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    new-instance v5, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const-string v7, "AVAILABLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    new-instance v7, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const-string v9, "NOT_AVAILABLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    new-instance v9, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const-string v11, "CAPPED_PER_SESSION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    new-instance v11, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const-string v13, "INIT_PENDING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->INIT_PENDING:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    new-instance v13, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const-string v15, "LOAD_PENDING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->LOAD_PENDING:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    new-instance v15, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const-string v14, "LOAD_FAILED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->LOAD_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    new-instance v14, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const-string v12, "CAPPED_PER_DAY"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    new-instance v12, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const-string v10, "CAPPED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->CAPPED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    new-instance v10, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const-string v8, "SKIP"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->SKIP:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    sput-object v8, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->$VALUES:[Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

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

    iput p3, p0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;
    .locals 1

    const-class v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    return-object p0
.end method

.method public static values()[Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->$VALUES:[Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {v0}, [Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->mValue:I

    return v0
.end method
